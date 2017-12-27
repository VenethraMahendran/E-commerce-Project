package com.niit.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.ProductDao;
import com.niit.model.Product;



public class ProductTest {
	
static ProductDao productDao;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext configApplnContext=new AnnotationConfigApplicationContext();
		configApplnContext.scan("com");
		configApplnContext.refresh();
		
		//SessionFactory sessionFactory=(SessionFactory)configApplnContext.getBean("DBConfig.class");
		
		productDao=(ProductDao)configApplnContext.getBean("ProductDao");
	}
	
	
	@Test
	public void addProduct()
	{
		Product product=new Product();
		product.setProductId(208);
		product.setProductName("Nokia 20");
		product.setProductDes("4 gb ram");
		product.setStock(10);
		product.setPrice(15000);
		product.setCatId(1002);
		product.setSupplierId(101);
		assertTrue(productDao.addProduct(product));
	}
	@Ignore
	@Test
	public void updateProduct()
	{
		Product product=new Product();
		product.setProductId(201);
		product.setProductName("Nokia 8");
		product.setProductDes("4 gb ram");
		product.setStock(10);
		product.setPrice(45000);
		product.setCatId(1002);
		product.setSupplierId(101);
		assertTrue(productDao.updateProduct(product));
	}
	@Ignore
	@Test
	public void deleteProduct()
	{
		Product product=new Product();
		product.setProductId(202);
		assertTrue(productDao.deleteProduct(product));
	}
	@Ignore
	@Test
	public void retrieveProductTest()
	{
		List<Product> listProduct=productDao.retrieveProduct();
		assertNotNull("Problem in Retriving",listProduct);
		this.show(listProduct);
	}
	public void show(List<Product> listProduct)
	{
		for(Product product:listProduct)
		{
			System.out.println("Product ID:"+product.getProductId());
			System.out.println("Product Name:"+product.getProductName());
		}
	}
	@Ignore
	@Test
	public void getProductTest()
	{
		Product product=productDao.getProduct(201);
		assertNotNull("Problem in getting",product);
		System.out.println("Product id:"+product.getProductId());
		System.out.println("Product name:"+product.getProductName());
	}
	
}
