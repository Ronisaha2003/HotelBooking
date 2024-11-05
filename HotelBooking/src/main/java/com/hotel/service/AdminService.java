package com.hotel.service;

import java.util.List;

import com.hotel.model.Admin;



public interface AdminService {
	void saveAdmin(Admin admin);
	List<Admin> getAllAdmin();
	Admin getAdminById(long id);
	
	void deleteAdminById(long id);
}
