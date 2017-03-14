package com.niit.model;

public class CustomerOrder {
private String cart;
private String customer;
private String billingAddress;
private String ShippingAddress;
private int grandtotal;
public String getCart() {
	return cart;
}
public void setCart(String cart) {
	this.cart = cart;
}
public String getCustomer() {
	return customer;
}
public void setCustomer(String customer) {
	this.customer = customer;
}
public String getBillingAddress() {
	return billingAddress;
}
public void setBillingAddress(String billingAddress) {
	this.billingAddress = billingAddress;
}
public String getShippingAddress() {
	return ShippingAddress;
}
public void setShippingAddress(String shippingAddress) {
	ShippingAddress = shippingAddress;
}
public int getGrandtotal() {
	return grandtotal;
}
public void setGrandtotal(int grandtotal) {
	this.grandtotal = grandtotal;
}

}
