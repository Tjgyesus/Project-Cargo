package com.takeo.service;



import com.takeo.model.Truck;
import com.takeo.repo.TruckRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TruckService {

    @Autowired
    private TruckRepo truckRepo;


    public boolean saveTruck(Truck truck){
        Truck truckSave = truckRepo.save(truck);

        if (truckSave != null)
            return true;
        else
            return false;
    }
    public List<Truck> getAllCTruck() {
        List<Truck> truckRecords = truckRepo.findAll();
        return truckRecords;
    }

    public Truck getTruckById(int id) {
        Optional<Truck> truckId = truckRepo.findById(id);
        Truck truck = truckId.get();
        return truck;
    }
    public boolean deleteTruck(int id) {
        Truck truck = getTruckById(id);
        boolean flag = false;
        if (truck != null) {
            truckRepo.delete(truck);
            flag = true;
        }
        else
            flag = false;
        return flag;
    }
    public boolean updateTruck(Truck st){

        return saveTruck(st);
    }
}
