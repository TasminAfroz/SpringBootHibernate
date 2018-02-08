package com.springboot.practice.SpringBootHibernate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.springboot.practice.SpringBootHibernate.Model.User;
import com.springboot.practice.SpringBootHibernate.Repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	UserRepository userRepository;

	@GetMapping("/users")
	public String showUsers() {
		return "Hello User";
	}

	@GetMapping("/signup")
	public String signUp(Model model) {
		model.addAttribute("user", new User());
		return "signUp";
	}

	@PostMapping("saveUser")
	public String saveUser(@ModelAttribute User user, Model model) {
		
		
		model.addAttribute("user",user);
		userRepository.save(user);
		return "c";
	}
	@GetMapping("userDetails")
	public String userDetails(@ModelAttribute User user, Model model) {
		
		
		model.addAttribute("users",userRepository.findAll());
//		userRepository.findAll();
		return "userDetails";
	}
}
