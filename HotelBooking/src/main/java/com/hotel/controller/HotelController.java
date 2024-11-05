package com.hotel.controller;

import java.util.List;
import java.util.Optional;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hotel.model.hotel;
import com.hotel.repository.UserRepo;
import com.hotel.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
public class HotelController {
	@Autowired
	  UserRepo repo;
		@Autowired
	private UserService serv;
		
		@GetMapping("/")
	   private String index() {
		return "home";	   
	   }
		
		
		@GetMapping("/user")
		   private String user() {
			return "user";
			   
		   }
		@GetMapping("/main")
		public String register(Model model)
		{
			hotel hote=new hotel();
			model.addAttribute("hotel",hote);
			return "userreg";
		}
		
		@PostMapping("/saveUser")
		public String saveUser(@ModelAttribute hotel hote, Model model)
		{
			model.addAttribute("msg","Register Successfull");
			serv.saveUser(hote);
			
			return "redirect:/user";
		}
		
		@GetMapping("/login")
		   private String login() {
			return "userlog";
			   
		   }
		@PostMapping("/userlogin")
		public String loginuser(@ModelAttribute("hotel")hotel hote) {
			  
			  String email=hote.getEmail();
			  
			Optional<hotel>userdata=repo.findByEmail(email);
			  if(hote.getPass().equals(userdata.get().getPass())) {
				  return "redirect:/user";
			  }
			  else {
				  return "error";
			  }
			
		}
		@GetMapping("/logout")
		public String logout(HttpServletRequest request) {
			HttpSession session=request.getSession(false);
			if(session!=null) {
				session.invalidate();
			}
			return "userlog";
		}
		@GetMapping("/userlist")
	    public String getUsers(Model model) {
	        List<hotel> users = serv.getAllUser();
	        model.addAttribute("users", users);
	        return "userlist";  // Name of the JSP file (userlist.jsp)
	    }
		
		
		 @PostMapping("userlist/delete/{id}")
		    public String deleteUser(@PathVariable Long id) {
		        serv.deleteUserById(id);
		        return "redirect:/userlist"; // Redirect to user list after deletion
		    }
		
		
		
		
		@GetMapping("/about")
		public String about() {
			return "about";
		}
		
		@GetMapping("/city")
		   private String book() {
			return "book";
			   
		   }
		@GetMapping("/villa")
		   private String villa() {
			return "villa";
			   
		   }
		@GetMapping("/taj")
		   private String taj() {
			return "taj";
			   
		   }
		@GetMapping("/kolkata")
		   private String kolkata() {
			return "kolkata";
			   
		   }
		@GetMapping("/palace")
		   private String palace() {
			return "palace";
			   
		   }
		@GetMapping("/hyatt")
		   private String hyatt() {
			return "hyatt";
			   
		   }
		@GetMapping("/novotel")
		   private String novotel() {
			return "novotel";
			   
		   }
		@GetMapping("/kurla")
		   private String kurla() {
			return "kurla";
			   
		   }
		@GetMapping("/contact")
		public String contact() {
			return "contact";
		}
		

		
	}
