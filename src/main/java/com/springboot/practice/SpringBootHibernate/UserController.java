package com.springboot.practice.SpringBootHibernate;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.springboot.practice.SpringBootHibernate.Model.Country;
import com.springboot.practice.SpringBootHibernate.Model.User;
import com.springboot.practice.SpringBootHibernate.Repository.CountryRepository;
import com.springboot.practice.SpringBootHibernate.Repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	UserRepository userRepository;
	@Autowired
	CountryRepository countryRepository;

	@GetMapping("/users")
	public String showUsers() {
		return "Hello User";
	}

	@GetMapping("/signup")
	public String signUp(@ModelAttribute User user,@ModelAttribute Country country,Model model) {
		
//		List<Country> countryList = countryRepository.findAll();
		List<Country>  countryList= (List<Country>) countryRepository.findAll();
		for(int i=0;i<6;i++) {
			System.out.println(countryList.get(i).getCountryName());
		}
		model.addAttribute("user", new User());
		model.addAttribute("countryList", countryList);
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
		
		List<User> uList = (List<User>) userRepository.findAll();
		System.out.println(uList.size());
		for(int i=0;i<uList.size();i++) {
			System.out.println("ok ");
			System.out.println(uList.get(i).getFirstName());
		}
//		allUser = uList;
//		while (!uList.isEmpty()) {
////			type type = (type) uList.nextElement();
//			System.out.println("Hello");
//			
//		}
		model.addAttribute("userList", uList);
//		model.addAttribute("users",userRepository.findAll());
//		userRepository.findAll();
		return "userDetails";
	}
}
