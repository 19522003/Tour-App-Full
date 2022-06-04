package com.entity;

public class CustomerTrip {
	private int requestId;
	private String firstName;
	private String lastName;
	private String city;
	private String country;
	private String phone;
	private String destination;
	private String month;
	private String days;
	private String people;
	private String money;
	private String email;
	public CustomerTrip() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CustomerTrip(int requestId, String firstName, String lastName, String city, String country, String phone,
			String destination, String month, String days, String people, String money, String email) {
		super();
		this.requestId = requestId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.city = city;
		this.country = country;
		this.phone = phone;
		this.destination = destination;
		this.month = month;
		this.days = days;
		this.people = people;
		this.money = money;
		this.email = email;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getRequestId() {
		return requestId;
	}
	public void setRequestId(int requestId) {
		this.requestId = requestId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	@Override
	public String toString() {
		return "CustomerTrip [requestId=" + requestId + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", city=" + city + ", country=" + country + ", phone=" + phone + ", destination=" + destination
				+ ", month=" + month + ", days=" + days + ", people=" + people + ", money=" + money + "]";
	}
	
}
