package com.niit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CustomerDao;
import com.niit.model.Customer;
import com.niit.model.Product;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerDao customerDao;
	public CustomerServiceImpl(){
		System.out.println("CREATING INSTANCE FOR CUSTOMERSERVICEIMPL");
	}

		public void saveCustomer(Customer customer) {
			 customerDao.saveCustomer(customer);
		}
}
