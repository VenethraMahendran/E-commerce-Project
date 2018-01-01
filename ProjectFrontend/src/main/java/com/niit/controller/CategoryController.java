package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.niit.Dao.CategoryDao;
import com.niit.model.Category;

@Controller
public class CategoryController {
	@Autowired
	CategoryDao categoryDao;
	@RequestMapping(value="/admin/addCategory",method=RequestMethod.POST)
	public String addCategory(@ModelAttribute Category cat,Model m)
	{
		
		categoryDao.addCategory(cat);
		List<Category> listCategory=categoryDao.retrieveCategory();
		m.addAttribute("categoryList",listCategory);
		return "Category";
	}
	@RequestMapping(value="/admin/category",method=RequestMethod.GET)
	public String showCategory(Model m)
	{ 
		List<Category> listCategory=categoryDao.retrieveCategory();
		m.addAttribute("categoryList",listCategory);
		return "Category";
	}
	@RequestMapping(value="admin/updateCategory/{catId}",method=RequestMethod.GET)
	public String updateCategory(@PathVariable("catId")int catId,Model m)
	{
		Category category=categoryDao.getCategory(catId);
		m.addAttribute(category);
		List<Category> listCategory=categoryDao.retrieveCategory();
		m.addAttribute("categoryList",listCategory);
		return "updateCategory";
	}
	@RequestMapping(value="admin/UpdateCategory",method=RequestMethod.POST)
	public String updateMyCategory(@ModelAttribute("category")Category category,Model m)
	{	
		
		categoryDao.updateCategory(category);
		Category category1=new Category();
		m.addAttribute(category1);
		
		List<Category> listCategory=categoryDao.retrieveCategory();
		m.addAttribute("categoryList",listCategory);
		
		return "Category";
	}
	@RequestMapping(value="admin/deleteCategory/{catId}",method=RequestMethod.GET)
	public String deleteCategory(@PathVariable("catId")int catId,Model m)
	{
		Category category=categoryDao.getCategory(catId);
		categoryDao.deleteCategory(category);
		List<Category> listCategory=categoryDao.retrieveCategory();
		m.addAttribute("categoryList",listCategory);
		return "Category";
	}
	

}	




