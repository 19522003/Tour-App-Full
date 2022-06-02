package com.entity;

public class Tour {
	private int tourId;
	private String tourName;
	private String location;
	private String days;
	private String nights;
	private String travelStyle;
	private String city;
	private String price;
	private String photo;
	public int getTourId() {
		return tourId;
	}
	public void setTourId(int tourId) {
		this.tourId = tourId;
	}
	public String getTourName() {
		return tourName;
	}
	public void setTourName(String tourName) {
		this.tourName = tourName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	public String getNights() {
		return nights;
	}
	public void setNights(String nights) {
		this.nights = nights;
	}
	public String getTravelStyle() {
		return travelStyle;
	}
	public void setTravelStyle(String travelStyle) {
		this.travelStyle = travelStyle;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	@Override
	public String toString() {
		return "Tour [tourId=" + tourId + ", tourName=" + tourName + ", location=" + location + ", days=" + days
				+ ", nights=" + nights + ", travelStyle=" + travelStyle + ", city=" + city + ", price=" + price
				+ ", photo=" + photo + "]";
	}
	public Tour(String tourName, String location, String days, String nights, String travelStyle,
			String city, String price, String photo) {
		super();
		this.tourName = tourName;
		this.location = location;
		this.days = days;
		this.nights = nights;
		this.travelStyle = travelStyle;
		this.city = city;
		this.price = price;
		this.photo = photo;
	}
	public Tour() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
