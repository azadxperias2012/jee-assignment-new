package com.azadworks.assignment.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.azadworks.assignment.model.Order;
import com.azadworks.assignment.model.User;
import com.azadworks.assignment.service.LoginService;
import com.azadworks.assignment.service.OrderService;

@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	LoginService service;

	@Autowired
	OrderService orderService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLoginPage() {
		logger.info("Showing login page.");
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String handleLoginRequest(@RequestParam String email, @RequestParam String password, Model model) {
		logger.info("handling login request");
		int userId = service.getValidUser(email, password);
		if (userId == -1) {
			return "redirect:/login";
		} else {
			model.addAttribute("userId", userId);
			model.addAttribute("userEmail", email);
			List<Order> orders = orderService.getOrders(userId);
			model.addAttribute("orders", orders);

		}
		return "home";
	}

}
