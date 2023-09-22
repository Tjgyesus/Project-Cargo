package com.takeo.service;


import com.takeo.model.Cargo;
import com.takeo.model.Driver;
import com.takeo.repo.DriverRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DriverService {
    @Autowired
    private DriverRepo driverRepo;

    public boolean saveDriver(Driver driver){
        Driver driverSave = driverRepo.save(driver);

        if(driverSave != null)
            return true;
        else
            return false;
    }
    public List<Driver> getAllDriver() {
        List<Driver> driverRecords = driverRepo.findAll();
        return driverRecords;
    }
    public Driver getDriverById(int id) {
        Optional<Driver> driverId = driverRepo.findById(id);
        Driver driver = driverId.get();
        return driver;
    }
    public boolean deleteDriver(int id) {
        Driver driver = getDriverById(id);
        boolean flag = false;
        if (driver != null) {
            driverRepo.delete(driver);
            flag = true;
        }
        else
            flag = false;
        return flag;
    }
    public boolean updateDriver(Driver st){

        return saveDriver(st);
    }
}
