package com.niit.dao;

import com.niit.entity.Product;
import com.niit.model.PaginationResult;
import com.niit.model.ProductInfo;

public interface ProductDAO {

	
public Product findProduct(String code);
    
    public ProductInfo findProductInfo(String code) ;
  
    
    public PaginationResult<ProductInfo> queryProducts(int page,
                       int maxResult, int maxNavigationPage  );
    
    public PaginationResult<ProductInfo> queryProducts(int page, int maxResult,
                       int maxNavigationPage, String likeName);
 
    public void save(ProductInfo productInfo);

}
