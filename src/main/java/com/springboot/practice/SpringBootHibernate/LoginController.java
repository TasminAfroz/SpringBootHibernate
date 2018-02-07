package com.springboot.practice.SpringBootHibernate;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.springboot.practice.SpringBootHibernate.Model.User;

@Controller
public class LoginController {
	@GetMapping ("/signup")
		 public String signUp(Model model) {
		model.addAttribute("user", new User());
		return "signUp";
	}
		
	
	
	

}
