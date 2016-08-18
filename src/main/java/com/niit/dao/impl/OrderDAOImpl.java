package com.niit.dao.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.dao.OrderDAO;
import com.niit.dao.ProductDAO;
import com.niit.entity.Order;
import com.niit.entity.OrderDetail;
import com.niit.entity.Product;
import com.niit.model.CartInfo;
import com.niit.model.CartLineInfo;
import com.niit.model.CustomerInfo;
import com.niit.model.OrderDetailInfo;
import com.niit.model.OrderInfo;
import com.niit.model.PaginationResult;

public class OrderDAOImpl implements OrderDAO {

	@Override
	public void saveOrder(CartInfo cartInfo) {
		// TODO Auto-generated method stub

	}

	public PaginationResult<OrderInfo> listOrderInfo1(int page, int maxResult,
			int maxNavigationPage) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderInfo getOrderInfo(String orderId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OrderDetailInfo> listOrderDetailInfos(String orderId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private ProductDAO productDAO;

	private int getMaxOrderNum() {
		String sql = "Select max(o.orderNum) from " + Order.class.getName()
				+ " o ";
		Session session = sessionFactory.getCurrentSession();
		org.hibernate.Query query = session.createQuery(sql);
		Integer value = (Integer) query.uniqueResult();
		if (value == null) {
			return 0;
		}
		return value;
	}

	public void saveOrder1(CartInfo cartInfo) {
		Session session = sessionFactory.getCurrentSession();

		int orderNum = this.getMaxOrderNum() + 1;
		Order order = new Order();

		order.setId(UUID.randomUUID().toString());
		order.setOrderNum(orderNum);
		order.setOrderDate(new Date());
		order.setAmount(cartInfo.getAmountTotal());

		CustomerInfo customerInfo = cartInfo.getCustomerInfo();
		order.setCustomerName(customerInfo.getName());
		order.setCustomerEmail(customerInfo.getEmail());
		order.setCustomerPhone(customerInfo.getPhone());
		order.setCustomerAddress(customerInfo.getAddress());

		session.persist(order);

		List<CartLineInfo> lines = cartInfo.getCartLines();

		for (CartLineInfo line : lines) {
			OrderDetail detail = new OrderDetail();
			detail.setId(UUID.randomUUID().toString());
			detail.setOrder(order);
			detail.setAmount(line.getAmount());
			detail.setPrice(line.getProductInfo().getPrice());
			detail.setQuanity(line.getQuantity());

			String code = line.getProductInfo().getCode();
			Product product = this.productDAO.findProduct(code);
			detail.setProduct(product);

			session.persist(detail);
		}

		// Set OrderNum for report.
		// Set OrderNum Ä‘á»ƒ thÃ´ng bÃ¡o cho ngÆ°á»�i dÃ¹ng.
		cartInfo.setOrderNum(orderNum);
	}

	// @page = 1, 2, ...
	@Override
	public PaginationResult<OrderInfo> listOrderInfo(int page, int maxResult,
			int maxNavigationPage) {
		String sql = "Select new "
				+ OrderInfo.class.getName()//
				+ "(ord.id, ord.orderDate, ord.orderNum, ord.amount, "
				+ " ord.customerName, ord.customerAddress, ord.customerEmail, ord.customerPhone) "
				+ " from " + Order.class.getName() + " ord "//
				+ " order by ord.orderNum desc";
		Session session = this.sessionFactory.getCurrentSession();

		org.hibernate.Query query = session.createQuery(sql);

		return new PaginationResult<OrderInfo>(query, page, maxResult,
				maxNavigationPage);
	}

	public Order findOrder(String orderId) {
		Session session = sessionFactory.getCurrentSession();
		Criteria crit = session.createCriteria(Order.class);
		crit.add(Restrictions.eq("id", orderId));
		return (Order) crit.uniqueResult();
	}

	public OrderInfo getOrderInfo1(String orderId) {
		Order order = this.findOrder(orderId);
		if (order == null) {
			return null;
		}
		return new OrderInfo(order.getId(),
				order.getOrderDate(), //
				order.getOrderNum(), order.getAmount(),
				order.getCustomerName(), //
				order.getCustomerAddress(), order.getCustomerEmail(),
				order.getCustomerPhone());
	}

	public List<OrderDetailInfo> listOrderDetailInfos1(String orderId) {
		String sql = "Select new "
				+ OrderDetailInfo.class.getName() //
				+ "(d.id, d.product.code, d.product.name , d.quanity,d.price,d.amount) "//
				+ " from " + OrderDetail.class.getName() + " d "//
				+ " where d.order.id = :orderId ";

		Session session = this.sessionFactory.getCurrentSession();

		Query query = (Query) session.createQuery(sql);
		query.setParameter("orderId", orderId);

		return ((org.hibernate.Query) query).list();
	}
}
