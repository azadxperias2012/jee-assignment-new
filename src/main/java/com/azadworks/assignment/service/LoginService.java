package com.azadworks.assignment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.azadworks.assignment.dao.mapper.UserRowMapper;
import com.azadworks.assignment.model.User;

@Service
public class LoginService {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public int getValidUser(String email, String password) {
		int result = -1;
		String sql = "SELECT * FROM USER_MASTER WHERE EMAIL = ?";
		try {
			User user = (User)jdbcTemplate.queryForObject(sql, new Object[] { email }, new UserRowMapper());		
			if ((user.getEmail().equals(email)) && (user.getPassword().equals(password))) {
				result = user.getId();
			}
		} catch (DataAccessException ex) {
			System.out.println("User not present.");
		}
		return result;
	}

}
