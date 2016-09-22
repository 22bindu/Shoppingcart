package com.niit.dao;

import java.util.List;

import com.niit.model.CartInfo;
import com.niit.model.OrderDetailInfo;
import com.niit.model.OrderInfo;
import com.niit.model.PaginationResult;
 
public interface OrderDAO {
	 
    public void saveOrder(CartInfo cartInfo);
 
    public PaginationResult<OrderInfo> listOrderInfo(int page,
            int maxResult, int maxNavigationPage);
    
    public OrderInfo getOrderInfo(String orderId);
    
    public List<OrderDetailInfo> listOrderDetailInfos(String orderId);
 
}