package com.bensport.entity;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;



@SuppressWarnings("serial")

@Entity
@Table(name="brands")
public class Brand implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer brandId;
	private String brandName;
	private String email;
	private String phone;
	
	
	
	public Integer getBrandId() {
		return brandId;
	}



	public void setBrandId(Integer brandId) {
		this.brandId = brandId;
	}



	public String getBrandName() {
		return brandName;
	}



	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public Collection<Product> getProducts() {
		return products;
	}



	public void setProducts(Collection<Product> products) {
		this.products = products;
	}



	@OneToMany(mappedBy="brand", fetch=FetchType.EAGER)
	private Collection<Product> products;
}
