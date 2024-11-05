package com.hotel.service;


import com.hotel.model.ImageHotel;
import com.hotel.repository.ImageGalleryRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

@Service
public class ImageGalleryService {

    @Autowired
    private ImageGalleryRepo hotelRepository;

    public void saveHotel(ImageHotel hotel) {
        hotelRepository.save(hotel);
    }

    // Get All Hotels
    public List<ImageHotel> getAllHotels() {
        return hotelRepository.findAll();
    }

    // Get Hotel by ID
    public ImageHotel getHotelById(Long id) {
        return hotelRepository.findById(id).orElse(null);
    }

    // Update Hotel
    public void updateHotel(Long id, ImageHotel updatedHotel) {
        Optional<ImageHotel> existingHotelOptional = hotelRepository.findById(id);
        if (existingHotelOptional.isPresent()) {
            ImageHotel existingHotel = existingHotelOptional.get();
            existingHotel.setHotelName(updatedHotel.getHotelName());
            existingHotel.setHotelLocation(updatedHotel.getHotelLocation());
            existingHotel.setAmount(updatedHotel.getAmount());
            existingHotel.setCreateDate(updatedHotel.getCreateDate());

            hotelRepository.save(existingHotel);
        }
    }

    // Delete Hotel by ID
    public void deleteHotel(Long id) {
        hotelRepository.deleteById(id);
    }
}
