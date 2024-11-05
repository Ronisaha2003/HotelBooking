package com.hotel.service;

import java.util.List;

import com.hotel.model.hotel;

public interface UserService {
	void saveUser(hotel hote);
	List<hotel> getAllUser();
	void deleteUserById(long id);
	public hotel getUserById(Long id);
	
}
