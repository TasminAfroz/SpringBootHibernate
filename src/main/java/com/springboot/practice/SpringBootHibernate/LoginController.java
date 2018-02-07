package com.springboot.practice.SpringBootHibernate;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {
	@GetMapping ("/signup")
		 public String signUp() {
		return "signUp";
	}
	@PostMapping("/saveUser")
	public String saveUser() {
		return "usersDetails";
	}
	

}
