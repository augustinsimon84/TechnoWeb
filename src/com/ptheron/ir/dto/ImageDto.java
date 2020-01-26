package com.ptheron.ir.dto;

public class ImageDto {
	
	private String id;
	private String name;
	private String area;
	private String city;
	
	
	// id
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
	// type de propriété
	public String getName() {
		return name;
	} 
	public void setName(String name) {
		this.name = name;
	}
	
	
	// surface de la propriété
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	
	
	// ville
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
}
