package com.niit.shoestylefrontend.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shoestyle.dao.CategoryRepository;
import com.niit.shoestyle.dao.ProductRepository;
import com.niit.shoestyle.model.Category;
import com.niit.shoestyle.model.Customer;
import com.niit.shoestyle.model.Product;

	@Controller
	public class HomeController {
		
		@Autowired
		private Category category;
		@Autowired
		private CategoryRepository categoryRepository;
		@Autowired
		private Product product;
		@Autowired
		private ProductRepository productRepository;
		@Autowired
		private Customer customer;
		@RequestMapping("/")
		public String rootPage()
		{
			return "index";
			
		}
		
		@RequestMapping("/index")
		public String homePage()
		{
			
			return "index";
		}
		@RequestMapping("/login")
		public String loginPage()
		{
			
			return "login";
		}
		
		
	
		
		@RequestMapping("/AdminHome")
		public String adminPage()
		{
			
			return "AdminHome";
		}
	
		
		@RequestMapping("/signUp")
		public String signUpPage(Model model)
		{
			model.addAttribute("custObj",customer);
			return "SignUp";
		}
		@RequestMapping("/logout")
		public String logoutPage()
		{
			
			return "index";
		}
		
		@RequestMapping("/aboutUs")
		public String aboutUsPage()
		{
			
			return "AboutUs";
		}
		@RequestMapping("/contactUs")
		public String contactUsPage()
		{
			
			return "ContactUs";
		}
		@RequestMapping("/category")
		public String categoryPage(Model model)
		{

			List<Category> allCategories= categoryRepository.getAllCategory();
			model.addAttribute("cat",category);
			model.addAttribute("categoryList",allCategories);
			
			return "Category";
		}
		
		@RequestMapping("/product")
		public String productPage(Model model)
		{  
			List<Product> allProducts= productRepository.getAllProduct();
			List<Category> allCategories= categoryRepository.getAllCategory();
			model.addAttribute("productOBJ",product);
			model.addAttribute("productList",allProducts);
			model.addAttribute("categoryList",allCategories);
			return "Product";
			
		}
			}

		
