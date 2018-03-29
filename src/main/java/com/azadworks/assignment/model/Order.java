package com.azadworks.assignment.model;

public class Order {

	private String orderId;
	private String orderedDate;
	private Double orderTotal;

	private String itemName;
	private String itemDescription;
	private String itemSeller;
	private Double price;
	private Integer offers;
	private String itemDeliveryDate;
	private String itemDeliveryStatus;

	public Order() {
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getOrderedDate() {
		return orderedDate;
	}

	public void setOrderedDate(String orderedDate) {
		this.orderedDate = orderedDate;
	}

	public Double getOrderTotal() {
		return orderTotal;
	}

	public void setOrderTotal(Double orderTotal) {
		this.orderTotal = orderTotal;
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

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
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
