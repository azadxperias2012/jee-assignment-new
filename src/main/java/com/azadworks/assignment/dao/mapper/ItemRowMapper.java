package com.azadworks.assignment.dao.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.azadworks.assignment.model.Item;

public class ItemRowMapper implements RowMapper<Item> {

	@Override
	public Item mapRow(ResultSet rs, int rowNum) throws SQLException {
		Item item = new Item();
		item.setItemName(rs.getString("itemName"));
		item.setItemDescription(rs.getString("itemDescription"));
		item.setItemSeller(rs.getString("itemSeller"));
		item.setPrice(rs.getInt("price"));
		item.setOffers(rs.getInt("offers"));
		item.setItemDeliveryStatus(rs.getString("itemDeliveryStatus"));
		item.setItemDeliveryDate(rs.getString("deliveredDate"));
		return item;
	}

}
