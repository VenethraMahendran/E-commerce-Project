package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.Dao.ProductDao;
import com.niit.model.Product;

@Controller
public class UserController {
	
	@Autowired
	ProductDao productDao;
	
	@RequestMapping(value="/user/prolist")
	public String showproductdetails(Model m)
	{
		List<Product> listProducts=productDao.retrieveProduct();
		m.addAttribute("productList",listProducts);
		return "productCustomerList";
	}

	@RequestMapping(value="/user/customerproductdetails/{productId}",method=RequestMethod.GET)
	public String viewProduct(@PathVariable("productId")int productId,Model m)
	{
		Product product=productDao.getProduct(productId);
		m.addAttribute(product);
		List<Product> Pro=productDao.retrieveProduct();
		m.addAttribute("productList",Pro);
		return "productCustomerDetails";
	}
	@RequestMapping(value="customerproductdetails/{productId}",method=RequestMethod.GET)
	public String viewProductdetails(@PathVariable("productId")int productId,Model m)
	{
		Product product=productDao.getProduct(productId);
		m.addAttribute(product);
		List<Product> Pro=productDao.retrieveProduct();
		m.addAttribute("productList",Pro);
		return "productCustomerDetails";
	}
	@RequestMapping(value="prolist")
	public String showproductList(Model m)
	{
		List<Product> listProducts=productDao.retrieveProduct();
		m.addAttribute("productList",listProducts);
		return "productCustomerList";
	}
	@RequestMapping(value="/user/int")
	public String in(Model m)
	{
		List<Product> listProducts=productDao.retrieveProduct();
		m.addAttribute("productList",listProducts);
		return "productCustomerList";
	}
}
