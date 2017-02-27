package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDao {
	@Autowired
	private SessionFactory sessionFactory;
public void saveCustomer(Customer customer){
	Session session=sessionFactory.openSession();
	customer.getUser().setEnabled(true);
	session.save(customer);
	session.flush();
	session.close();
}
}
