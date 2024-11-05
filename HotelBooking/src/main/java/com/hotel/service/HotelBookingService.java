package com.hotel.service;



import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;


import com.hotel.model.Booking;
import com.hotel.repository.BookingRepo;
import com.razorpay.RazorpayClient;

@Service
public class HotelBookingService {

    @Autowired
    private BookingRepo bookingRepository;
    @Value("${razorpay.key.id}")
	private String razorPayKey;
	@Value("${razorpay.secret.key}")
	private String razorPaySecret;

     private RazorpayClient client;
	
	public Booking createOrder(Booking book) throws Exception {
		JSONObject orderReq=new JSONObject();
		orderReq.put("amount", book.getAmount()*100);//amount in paisa
		orderReq.put("currency", "INR");
		orderReq.put("receipt",book.getEmail());
		this.client=new RazorpayClient(razorPayKey,razorPaySecret);
	com.razorpay.Order razorPayOrder = client.orders.create(orderReq);
	
	System.out.println(razorPayOrder);
	
	book.setRazorpayBookId(razorPayOrder.get("id"));
	book.setBookingStatus(razorPayOrder.get("status"));
	bookingRepository.save(book);
	return book;
	}
	
	
	public Booking updateorder(Map<String,String> responsePayLoad) {
	String razorPayOrderId =	responsePayLoad.get("razorpay_booking_id");
	Booking book =bookingRepository.findByRazorpayBookId(razorPayOrderId);
	book.setBookingStatus("PAYMENT_COMPLETED");
	Booking updatedOrder =bookingRepository.save(book);
	return  updatedOrder;
	}
	  public List<Booking> getAllBookings() {
	        return bookingRepository.findAll();
	    }
	
	

	 
	       
    
	
}

