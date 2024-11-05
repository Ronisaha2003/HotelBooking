package com.hotel.repository;







import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hotel.model.Booking;
@Repository
public interface BookingRepo extends JpaRepository<Booking,Integer> {
	 public Booking findByRazorpayBookId(String bookingId);
	
}

