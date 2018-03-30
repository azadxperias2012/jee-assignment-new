package com.azadworks.assignment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.azadworks.assignment.dao.UserDao;

@Service
public class LoginService {

	@Autowired
	UserDao dao;

	public int getValidUser(String email, String password) {
		return dao.getValidUser(email, password);
	}

}
