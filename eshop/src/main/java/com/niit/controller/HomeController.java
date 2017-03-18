package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.service.CategoryService;

@Controller
public class HomeController {
	@Autowired
	private CategoryService categoryService;
	@RequestMapping("/aboutus")
	public String getAbout()
	{
		return "aboutus";
	}

	@RequestMapping("/home")
	public String gethome(HttpSession session)
	{
		//categories in header.jsp not in home.jsp. we havent used model instead used session
		session.setAttribute("categories", categoryService.getCategories());
		
		return "index";
	}
	@RequestMapping("/loginpage")
	public String login(@RequestParam(value="error",required=false) String error,
			@RequestParam(value="logout",required=false) String logout,
			Model model){
		if(error!=null)
			model.addAttribute("error","Invalid Username and Password.. Please enter valid username and password");
		if(logout!=null)
			model.addAttribute("logout","Loggedout successfully..");
		return "loginhere";
	}
	
}