package com.stradtman.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.stradtman.springdemo.entity.User;
import com.stradtman.springdemo.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@GetMapping("/list")
	public String listUsers(Model theModel) {
		List<User> theUsers = userService.getUsers();
		theModel.addAttribute("users", theUsers);
		return "list-users";
	}
	
	@GetMapping("/showRegister")
	public String showRegister(Model theModel) {
		User theUser = new User();
		theModel.addAttribute("user", theUser);
		return "register";
	}
	
	@PostMapping("/registerUser")
	public String registerUser(@ModelAttribute("user") User theUser) {
		userService.saveUser(theUser);
		return "redirect:/user/list";
	}
	
	@GetMapping("/showFormForUpdateUser")
	public String showFormForUpdateUser(@RequestParam("userId") int theId, Model theModel) {
		User theUser = userService.getUser(theId);
		theModel.addAttribute("user", theUser);
		return "register";
	}
	
	@GetMapping("/deleteUser")
	public String deleteUser(@RequestParam("userId") int theId) {
		userService.deleteCustomer(theId);
		return "redirect:/user/list";
	}
}
