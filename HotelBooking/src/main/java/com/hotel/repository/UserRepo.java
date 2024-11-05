package com.hotel.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hotel.model.hotel;
@Repository
public interface UserRepo extends JpaRepository<hotel, Long> {
	Optional <hotel>findByEmail(String email);
}
