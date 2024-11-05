package com.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.model.hotel;
import com.hotel.repository.UserRepo;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	 private UserRepo repo;
	@Override
	public void saveUser(hotel hote) {
		
		 this.repo.save(hote);
	}

	@Override
	public List<hotel> getAllUser() {
		
		return repo.findAll();

	}

	@Override
	public void deleteUserById(long id) {
		 repo.deleteById(id);
    }
		
	

	@Override
	public hotel getUserById(Long id) {
	
		 return repo.findById(id).orElse(null);
	}
	 

}
