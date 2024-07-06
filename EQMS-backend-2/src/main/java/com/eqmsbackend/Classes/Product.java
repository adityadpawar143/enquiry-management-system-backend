package com.eqmsbackend.Classes;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "product_id")
	private int productId;
	private String productName;
	private String productCategory1;
	private String productCategory2;
	private String productDescription;
	
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductCategory1() {
		return productCategory1;
	}
	public void setProductCategory1(String productCategory1) {
		this.productCategory1 = productCategory1;
	}
	public String getProductCategory2() {
		return productCategory2;
	}
	public void setProductCategory2(String productCategory2) {
		this.productCategory2 = productCategory2;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	
	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName=" + productName + ", productCategory1="
				+ productCategory1 + ", productCategory2=" + productCategory2 + ", productDescription="
				+ productDescription + "]";
	}
	
	
	

}
