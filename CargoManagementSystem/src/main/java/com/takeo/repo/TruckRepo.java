package com.takeo.repo;


import com.takeo.model.Truck;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TruckRepo extends JpaRepository<Truck, Integer> {
}
