package com.niit.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Category implements Serializable  {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
private String categoryDetails;
@OneToMany(mappedBy="category")
@JsonIgnore
private List<Product> products;


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getCategoryDetails() {
	return categoryDetails;
}
public void setCategoryDetails(String categoryDetails) {
	this.categoryDetails = categoryDetails;
}
public List<Product> getProducts() {
	return products;
}
public void setProducts(List<Product> products) {
	this.products = products;
}
@Override
public String toString() {
	return this.id + " " + this.categoryDetails;
}

}