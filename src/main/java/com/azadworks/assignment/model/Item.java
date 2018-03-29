package com.azadworks.assignment.model;

public class Item {

	private String itemName;
	private String itemDescription;
	private String itemSeller;
	private Integer price;
	private Integer offers;
	private String itemDeliveryDate;
	private String itemDeliveryStatus;
	
	public Item() {
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getItemDescription() {
		return itemDescription;
	}

	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}

	public String getItemSeller() {
		return itemSeller;
	}

	public void setItemSeller(String itemSeller) {
		this.itemSeller = itemSeller;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getOffers() {
		return offers;
	}

	public void setOffers(Integer offers) {
		this.offers = offers;
	}

	public String getItemDeliveryDate() {
		return itemDeliveryDate;
	}

	public void setItemDeliveryDate(String itemDeliveryDate) {
		this.itemDeliveryDate = itemDeliveryDate;
	}

	public String getItemDeliveryStatus() {
		return itemDeliveryStatus;
	}

	public void setItemDeliveryStatus(String itemDeliveryStatus) {
		this.itemDeliveryStatus = itemDeliveryStatus;
	}

}
