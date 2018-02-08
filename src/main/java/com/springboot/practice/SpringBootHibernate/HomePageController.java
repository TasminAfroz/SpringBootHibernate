package com.springboot.practice.SpringBootHibernate;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class HomePageController {
	@GetMapping("/")
	public String showHomePage() {
		return "homePage";
	}
	

}
