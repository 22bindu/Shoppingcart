package com.niit.model;

import com.niit.entity.Product;

public class ProductInfo {

	private String name;
	private String address;
	private String email;
	private String phone;

	private boolean valid;
	
	public ProductInfo() {
		// TODO Auto-generated constructor stub
	}
	public ProductInfo(Product product) {
		// TODO Auto-generated constructor stub
	}

	public ProductInfo(String code, String name2, double price) {
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean valid) {
		this.valid = valid;
	}

	public boolean isNewProduct() {
		// TODO Auto-generated method stub
		return false;
	}

	public int getPrice() {
		// TODO Auto-generated method stub
		return 0;
	}

	public String getCode() {
		// TODO Auto-generated method stub
		return null;
	}

	public Object getFileData() {
		// TODO Auto-generated method stub
		return null;
	}

	public void setNewProduct(boolean b) {
		// TODO Auto-generated method stub

	}

}
