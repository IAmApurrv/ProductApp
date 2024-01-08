package com.product.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.product.entities.Product;

@Component
public class ProductDao {

	@Autowired
	HibernateTemplate hibernateTemplate;

	@Transactional
	public void saveProduct(Product product) // create or update
	{
		this.hibernateTemplate.saveOrUpdate(product);
	}

	public List<Product> getAllProducts() // get all products
	{
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}

	public Product getSingleProduct(int id) // get single product
	{
		Product product = this.hibernateTemplate.get(Product.class, id);
		return product;
	}

	@Transactional
	public void deleteProduct(int id) // delete product
	{
		Product product = this.hibernateTemplate.load(Product.class, id);
		this.hibernateTemplate.delete(product);
	}

//	public HibernateTemplate getHibernateTemplate() {
//		return hibernateTemplate;
//	}
//
//	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
//		this.hibernateTemplate = hibernateTemplate;
//	}
}
