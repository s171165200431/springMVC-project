package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Product;
@Repository
public class ProductDaoImpl implements ProductDao {
@Autowired
private SessionFactory sessionFactory;
	public ProductDaoImpl(){
		System.out.println("CREATING INSTANCE FOR PRODUCTDAOIMPL");
	}
	
	public Product saveProduct(Product product) {
		System.out.println(product.getId());
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(product); //insert into product values (next.val,.....)
		session.flush();
		session.close();
		System.out.println(product.getId());
		return product;	
	}

	public List<Product> getAllProducts() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Product");
		List<Product> products=query.list();
		session.close();
		return products;
	}

	public Product getProductById(int id) {
		Session session=sessionFactory.openSession();
		//select * from product where id=34
		Product product=(Product)session.get(Product.class,id);
		session.close();
		return product;
	}
	public void deleteProduct(int id) {
		Session session=sessionFactory.openSession();
		//Make the object persistent[read the data from the table and add it to session]
		Product product=(Product)session.get(Product.class, id);
		session.delete(product);
		session.flush();
		session.close();
		
	}

	public void updateProduct(Product product) {
		Session session=sessionFactory.openSession();
		System.out.println("Id of the product in dao is " + product.getId());
		session.update(product); //update product set  where id=?
		session.flush();
		session.close();
		
	}


}