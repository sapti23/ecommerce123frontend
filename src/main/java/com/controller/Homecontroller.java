package com.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Homecontroller {
	String message ="Welcome to E-COM";
	@RequestMapping("")
		public String index() {
		    return "index";
	}
	@RequestMapping("/contact")	
	public String contact(){
		return "contact";
	}
	@RequestMapping("/login")
	public String login(@RequestParam(value="error",required=false) String error,
			@RequestParam(value="logout",required=false) String logout,
			Model model){
		if(error!=null)
			model.addAttribute("error","Invalid Username and Password.. Please enter valid username and password");
		if(logout!=null)
			model.addAttribute("logout","Loggedout successfully");
		return "login";
		
	}
	}
