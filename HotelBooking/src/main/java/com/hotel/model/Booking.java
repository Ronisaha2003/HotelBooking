package com.hotel.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "bookings")
public class Booking {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer bookingId;
    private String name;
   
    private String email;
    private String phno;
    private Integer amount;
    private String bookingStatus;
    private String razorpayBookId;
	public Integer getBookingId() {
		return bookingId;
	}
	public void setBookingId(Integer bookingId) {
		this.bookingId = bookingId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public String getBookingStatus() {
		return bookingStatus;
	}
	public void setBookingStatus(String bookingStatus) {
		this.bookingStatus = bookingStatus;
	}
	public String getRazorpayBookId() {
		return razorpayBookId;
	}
	public void setRazorpayBookId(String razorpayBookId) {
		this.razorpayBookId = razorpayBookId;
	}
	@Override
	public String toString() {
		return "Booking [bookingId=" + bookingId + ", name=" + name + ", email=" + email + ", phno=" + phno
				+ ", amount=" + amount + ", bookingStatus=" + bookingStatus + ", razorpayBookId=" + razorpayBookId
				+ "]";
	}
	
	
	

}

