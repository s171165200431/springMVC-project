
package com.niit.dao;

import com.niit.model.Customer;

public interface CustomerDao {
	void savecustomer(Customer customer);
	Customer getCustomerByUsername(String username);
}

