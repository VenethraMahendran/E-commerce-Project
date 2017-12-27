package com.niit.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.UserDao;
import com.niit.model.User;

public class UserTest {

	static UserDao userDao;
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext configApplnContext=new AnnotationConfigApplicationContext();
		configApplnContext.scan("com");
		configApplnContext.refresh();
		
		//SessionFactory sessionFactory=(SessionFactory)configApplnContext.getBean("DBConfig.class");
		
		userDao=(UserDao)configApplnContext.getBean("UserDao");
	}
	@Ignore
	@Test
	public void addUserTest()
	{
		User user=new User();
		user.setUsername("Hello");
		user.setEmail("Hello@gmail.com");
		user.setPassword("123");
		user.setAddress("Kovai");
		assertTrue(userDao.addUser(user));
		
		
	}
	
}
