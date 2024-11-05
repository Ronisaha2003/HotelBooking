package com.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.model.Admin;
import com.hotel.repository.AdminRepo;


@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	 private AdminRepo arepo;
	@Override
	public void saveAdmin(Admin admin) {
		this.arepo.save(admin);
		
	}

	@Override
	public List<Admin> getAllAdmin() {
		
		return arepo.findAll();
	}

	@Override
	public Admin getAdminById(long id) {
		
		return null;
	}

	@Override
	public void deleteAdminById(long id) {
	
		
	}

}
