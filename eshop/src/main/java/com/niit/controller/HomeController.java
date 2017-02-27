package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/aboutus")
	public String getAbout()
	{
		return "aboutus";
	}

	@RequestMapping("/index")
	public String gethome()
	{
		return "home";
	}
	
	@RequestMapping("/login")
	public String getlogin()
	{
		return "login";
	}
}