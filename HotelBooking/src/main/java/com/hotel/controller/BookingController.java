package com.hotel.controller;



import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


import com.hotel.model.Booking;

import com.hotel.service.HotelBookingService;



import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;


@Controller
public class BookingController {

	@Autowired
	 private HotelBookingService Serv;
	
	
	 @PostMapping(value="/create-order", produces="application/json")
	 @ResponseBody
	 public ResponseEntity<Booking>createOrder(@RequestBody Booking book)throws Exception{
		Booking createdOrder= Serv.createOrder(book);
		 return new ResponseEntity<>(createdOrder,HttpStatus.CREATED);
	 }
	 @PostMapping("handle-payment-callback")
	 public String handlePaymentCallback(@RequestParam Map<String,String> respPayLoad) {
		 try {
		        System.out.println(respPayLoad);
		        Serv.updateorder(respPayLoad);
		        return "redirect:/success"; // Redirect to success page
		    } catch (Exception e) {
		        e.printStackTrace(); // Log the exception
		        return "redirect:/error"; // Redirect to an error page
		    }
    }
	 @GetMapping("/success")
	   private String success() {
		return "success";
		   
	   }
	 @GetMapping("/bookinglist")
	    public String getBookingList(Model model) {
	        List<Booking> bookings = Serv.getAllBookings();
	        model.addAttribute("bookings", bookings); // Add bookings to the model
	        return "bookinglist"; // Return the name of your JSP page
	    }
	 
	
}
   






