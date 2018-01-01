package com.niit.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.UserDao;
import com.niit.model.User;


@Controller
public class IndexController {
	
	@Autowired
	UserDao userDao;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	@RequestMapping(value="/index")
	public String in()
	{
		return "index";
	}
	
	
	/*@RequestMapping("/")
	public String privacy() {
		return "PrivacyPolicy";
	}
	@RequestMapping(value="/PrivacyPolicy")
	public String pri()
	{
		return "PrivacyPolicy";
	}*/
	/*@RequestMapping(value="/Product",method=RequestMethod.GET)
	public String pro(Model m)
	{
		Product product=new Product();

		m.addAttribute(product);

		m.addAttribute("categoryList",this.getCategories());

		m.addAttribute("supplierList", this.getSupplieries());

		
		return "Product";
	}

	
	private Object getSupplieries() {
		// TODO Auto-generated method stub
		return null;
	}
	private Object getCategories() {
		// TODO Auto-generated method stub
		return null;
	}*/
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public ModelAndView goToRegister()
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("user",new User());
		mv.setViewName("register");
		return mv;
		
	}

	@RequestMapping(value="/saveRegister", method=RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute("user")User user)
	{
		ModelAndView mv=new ModelAndView();
		user.setRole("ROLE_USER");
		user.setEnabled("1");
		userDao.addUser(user);
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping("/goTologin")
	public ModelAndView goToLogin()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	
	@RequestMapping("/userLogged")
	public String userLogged()
	{
		return "redirect:index";
		
	}
	@RequestMapping("/error")
	public String errorPage()
	{
		return "error";
	}
	@RequestMapping("/admin/category")
	public String cat()
	{
		return "Category";
	}@RequestMapping("/admin/product")
	public String sup()
	{
		return "Product";
	}@RequestMapping("/admin/supplier")
	public String pro()
	{
		return "Supplier";
	}
}
	/*@RequestMapping("/accessdenied")
	public String accessdenied()
	{
		return "accessdenied";
	}
	
}*/