package com.azadworks.assignment.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.azadworks.assignment.model.Item;
import com.azadworks.assignment.model.Order;
import com.azadworks.assignment.model.User;

@Repository
public class OrderDao {

	public List<Order> getOrders(User user) {
		List<Order> orders = new ArrayList<Order>();
		Order order1 = new Order();
		order1.setOrderId("OD1111");
		order1.setOrderedDate("Mon, Jan 15th '18");
		order1.setOrderTotal(100);
		order1.setItems(getItems(2));
		order1.setOrderTotal(getOrderTotal(order1.getItems()));
		
		Order order2 = new Order();
		order2.setOrderId("OD2222");
		order2.setOrderedDate("Mon, Jan 22th '18");
		order2.setItems(getItems(3));
		order2.setOrderTotal(getOrderTotal(order2.getItems()));
		
		orders.add(order1);
		orders.add(order2);
		return orders;
	}
	
	private Integer getOrderTotal(List<Item> items) {
		Integer total = 0;
		for (Item item : items) {
			total += item.getPrice();
		}
		return total;
	}
	
	private List<Item> getItems(int numberOfItems) {
		List<Item> items = new ArrayList<Item>();
		for (int i = 0; i < numberOfItems; i++) {
			items.add(getItem());	
		}
		return items;
	}
	
	private Item getItem() {
		Item item = new Item();
		
		item.setItemName("Nivia Python Gym & Fitness Gloves (L, Blue, Black)");
		item.setItemDescription("Color: Blue,Black Size: 23.5");
		item.setItemSeller("WS Retail");
		item.setOffers(1);
		item.setPrice(100);
		item.setItemDeliveryDate("Tue, Jan 23th '18");
		item.setItemDeliveryStatus("Your item has been delivered");
		
		return item;
	}

}
