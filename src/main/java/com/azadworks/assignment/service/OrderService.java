package com.azadworks.assignment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.azadworks.assignment.dao.OrderDao;
import com.azadworks.assignment.model.Order;
import com.azadworks.assignment.model.User;

@Service
public class OrderService {

	@Autowired
	OrderDao dao;

	public List<Order> getOrders(User user) {
		return dao.getOrders(user);
	}

}
