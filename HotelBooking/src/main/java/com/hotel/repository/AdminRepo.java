package com.hotel.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hotel.model.Admin;

public interface AdminRepo extends JpaRepository<Admin, Long> {
	Optional<Admin> findByEmail(String email);
}
