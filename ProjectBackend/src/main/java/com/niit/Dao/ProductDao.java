package com.niit.Dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDao {
	public boolean addProduct(Product product);
	public List<Product> retrieveProduct();
	public boolean deleteProduct(Product product);
	public Product getProduct(int productId);
	public boolean updateProduct(Product product);
	public Product getByProductId(int productId);
	public void saveOrUpdate(Product product);
}