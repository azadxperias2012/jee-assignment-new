package com.azadworks.assignment.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.azadworks.assignment.model.User;
import com.azadworks.assignment.service.LoginService;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	LoginService service;

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String showLoginPage() {
		logger.info("Showing login page.");
		return "login";
	}

	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String handleLoginRequest(@RequestParam String email, @RequestParam String password,
			Model model) {
		logger.info("handling post request");
		if (!service.isUserValid(email, password)) {
			return "login";
		} else {
			User user = new User();
			user.setId(1);
			user.setEmail(email);
			user.setPassword(password);
			model.addAttribute("user", user);
		}
		return "home";
	}

}
