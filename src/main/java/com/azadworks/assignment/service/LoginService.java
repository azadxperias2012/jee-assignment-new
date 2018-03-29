package com.azadworks.assignment.service;

import org.springframework.stereotype.Service;

@Service
public class LoginService {
	
	public boolean isUserValid(String email, String password) {
		return (email.equals("azad@invalid.com") &&
				password.equals("Welcome1"));
	}

}
