package com.hotel.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hotel.model.ImageHotel;
import com.hotel.service.ImageGalleryService;

@Controller
public class ImageHotelController {

    @Autowired
    private ImageGalleryService hotelService;
    @GetMapping("/hotellist")
    public String getHotels(Model model) {
        List<ImageHotel> hotels = hotelService.getAllHotels();
        model.addAttribute("hotels", hotels);
        return "hotellist";
    }

    @GetMapping("/hotellist/add")
    public String addHotelForm(Model model) {
        model.addAttribute("hotel", new ImageHotel());
        return "addhotel";
    }

    @GetMapping("/hotellist/edit/{id}")
    public String editHotelForm(@PathVariable Long id, Model model) {
        ImageHotel imageHotel = hotelService.getHotelById(id);
        if (imageHotel != null) {
            model.addAttribute("imageHotel", imageHotel); // Set imageHotel attribute in model
        }
        return "edithotel";  // Name of JSP file for editing the hotel
    }

    @PostMapping("/hotellist/add")
    public String addHotel(@ModelAttribute("hotel") ImageHotel hotel) {
        hotelService.saveHotel(hotel);
        return "redirect:/hotellist";
    }

    @PostMapping("/hotellist/edit/{id}")
    public String updateHotel(@PathVariable Long id, 
                              @ModelAttribute("hotel") ImageHotel hotel) {
        hotelService.updateHotel(id, hotel);
        return "redirect:/hotellist";
    }

    @GetMapping("hotellist/delete/{id}")
    public String deleteHotelConfirm(@PathVariable Long id, Model model) {
        ImageHotel imageHotel = hotelService.getHotelById(id);
        if (imageHotel != null) {
            model.addAttribute("imageHotel", imageHotel); // Set the hotel attribute for confirmation
            return "deletehotel"; // Return the delete confirmation JSP
        }
        return "redirect:/hotellist"; // Redirect to hotel list if hotel not found
    }

    @PostMapping("hotellist/delete/{id}")
    public String deleteHotel(@PathVariable Long id) {
        hotelService.deleteHotel(id); // Call the service to delete the hotel
        return "redirect:/hotellist"; // Redirect to the list after deletion
    }
}
