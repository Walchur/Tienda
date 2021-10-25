package com.tienda.DTO;

public class Customer {
	private String name;
	private String photo;
	
	public Customer() {
		
	}
	
	public Customer(String name, String photo) {
		this.name = name;
		this.photo = photo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}
}