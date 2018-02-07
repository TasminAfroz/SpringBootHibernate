package com.springboot.practice.SpringBootHibernate;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class UserController {
	@GetMapping("/users")
	public String showUsers() {
		return "Hello User";
	}

	@PostMapping("/saveUser")
	public String saveUser() {
		return "usersDetails";
	}
}
