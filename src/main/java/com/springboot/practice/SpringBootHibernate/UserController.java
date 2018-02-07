package com.springboot.practice.SpringBootHibernate;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {
	@GetMapping("/users")
public String showUsers() {
	return "Hello User";
}
}
