package com.hotel.model;


import java.util.Date;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name = "hotels")
public class ImageHotel {
    
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;

	    private String hotelName;
	    private String hotelLocation;
	    private double amount;

	    @Temporal(TemporalType.TIMESTAMP)
	    @Column(name = "create_date", nullable = false, updatable = false)
	    private Date createDate = new Date();  // Automatically set the current date on creation

	    // Getters and Setters
	    public Long getId() { return id; }
	    public void setId(Long id) { this.id = id; }

	    public String getHotelName() { return hotelName; }
	    public void setHotelName(String hotelName) { this.hotelName = hotelName; }

	    public String getHotelLocation() { return hotelLocation; }
	    public void setHotelLocation(String hotelLocation) { this.hotelLocation = hotelLocation; }

	    public double getAmount() { return amount; }
	    public void setAmount(double amount) { this.amount = amount; }

	    public Date getCreateDate() { return createDate; }
	    public void setCreateDate(Date createDate) { this.createDate = createDate; }
	}
	

