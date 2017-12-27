package com.niit.test;

import static org.junit.Assert.assertTrue;

import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.CartDao;
import com.niit.model.Cart;

public class CartTest {

	static CartDao cartDao;
	
	public static void initialize()
	{
		AnnotationConfigApplicationContext configApplnContext=new AnnotationConfigApplicationContext();
		configApplnContext.scan("com");
		configApplnContext.refresh();
		
		//SessionFactory sessionFactory=(SessionFactory)configApplnContext.getBean("DBConfig.class");
		
		cartDao=(CartDao)configApplnContext.getBean("CartDao");
	}
	
	@Test
	public void addCartTest()
	{
		Cart cart=new Cart();
		cart.setCartId(555);
		
		
		
		assertTrue(cartDao.add(cart));
}
}