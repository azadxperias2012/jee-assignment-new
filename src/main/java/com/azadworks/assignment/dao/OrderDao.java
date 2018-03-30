package com.azadworks.assignment.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.azadworks.assignment.dao.mapper.ItemRowMapper;
import com.azadworks.assignment.dao.mapper.OrderRowMapper;
import com.azadworks.assignment.model.Item;
import com.azadworks.assignment.model.Order;

@Repository
public class OrderDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	public List<Order> getOrders(int userId) {
		String sql = "SELECT id As orderId, DATE_FORMAT(OrderDate, \"%a, %b %D '%y\") AS orderedDate FROM USER_ACCOUNT WHERE UserID = "
				+ userId;

		List<Order> orders = jdbcTemplate.query(sql, new OrderRowMapper());
		for (Order order : orders) {
			order.setItems(getItems(order.getOrderId()));
			order.setOrderTotal(getOrderTotal(order.getItems()));
		}
		return orders;
	}

	private List<Item> getItems(String orderId) {
		String sql = "SELECT ITEM.ItemName AS itemName, ITEM.ItemDescription AS itemDescription, ITEM.ItemSeller AS itemSeller, "
				+ "ITEM.Price AS price, ITEM.Offers AS offers, ORDER_DETAILS.ItemDeliveryStatus AS itemDeliveryStatus, "
				+ "DATE_FORMAT(ORDER_DETAILS.ItemDeliveryDate, \"%a, %b %D '%y\") AS deliveredDate "
				+ "FROM ORDER_DETAILS INNER JOIN ITEM ON ORDER_DETAILS.ItemId=ITEM.id AND ORDER_DETAILS.OrderId = \'"
				+ orderId + "\'";

		List<Item> items = jdbcTemplate.query(sql, new ItemRowMapper());
		return items;
	}

	private Integer getOrderTotal(List<Item> items) {
		Integer total = 0;
		for (Item item : items) {
			total += item.getPrice();
		}
		return total;
	}
}
