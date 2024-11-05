package com.hotel.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hotel.model.ImageHotel;
@Repository
public interface ImageGalleryRepo extends JpaRepository<ImageHotel, Long> {

}
