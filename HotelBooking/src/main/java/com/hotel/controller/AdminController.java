package com.hotel.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.hotel.model.Admin;
import com.hotel.model.hotel;
import com.hotel.repository.AdminRepo;

import com.hotel.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
public class AdminController {
	@Autowired
	 AdminRepo arepo;
		@Autowired
	private AdminService aserv;
		
		@GetMapping("/base")
		public String admin() {
			return "base";
		}
		
		@GetMapping("/admin")
		public String register(Model model)
		{
			hotel hote=new hotel();
			model.addAttribute("hotel",hote);
			return "adminreg";
		}
		@PostMapping("/saveAdmin")
		public String saveAdmin(@ModelAttribute Admin admin, Model model)
		{
			model.addAttribute("message","Registered successfully");
			aserv.saveAdmin(admin);
			
			return "redirect:/base";
		}
		@GetMapping("/log")
		   private String login() {
			return "adminlog";
			   
		   }
		@PostMapping("/adminlogin")
		public String loginadmin(@ModelAttribute("admin")Admin admin) {
			  
			  String email=admin.getEmail();
			  
			Optional<Admin>admindata=arepo.findByEmail(email);
			  if(admin.getPass().equals(admindata.get().getPass())) {
				  return "redirect:/base";
			  }
			  else {
				  return "error";
			  }
			
		}
		@GetMapping("/alogout")
		public String logoutuser(HttpServletRequest request) {
			HttpSession session=request.getSession(false);
			if(session!=null) {
				session.invalidate();
			}
			return "adminlog";
		}
		@GetMapping("/book")
		public String reserve() {
			return "reserve";
		}
		
}
