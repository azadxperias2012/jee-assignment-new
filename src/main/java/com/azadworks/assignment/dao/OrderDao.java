package com.azadworks.assignment.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.azadworks.assignment.model.Order;
import com.azadworks.assignment.model.User;

@Repository
public class OrderDao {

	public List<Order> getOrders(User user) {
		List<Order> orders = new ArrayList<Order>();
		Order order1 = new Order();
		order1.setOrderId("OD1111");
		order1.setOrderedDate("Mon, Jan 15th '18");
		order1.setOrderTotal(100D);
		
		Order order2 = new Order();
		order2.setOrderId("OD2222");
		order2.setOrderedDate("Mon, Jan 21th '18");
		order2.setOrderTotal(200D);
		
		orders.add(order1);
		orders.add(order2);
		return orders;
	}

}
