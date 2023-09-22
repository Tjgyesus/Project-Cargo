package com.takeo.service;

import com.takeo.model.Cargo;
import com.takeo.repo.CargoRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CargoService {

    @Autowired
    private CargoRepo cargoRepo;


    public boolean saveCargo(Cargo cargo){
        Cargo cargoSave = cargoRepo.save(cargo);

        if (cargoSave != null)
            return true;
        else
            return false;
    }
    public List<Cargo> getAllCargo() {
        List<Cargo> cargoRecords = cargoRepo.findAll();
        return cargoRecords;
    }

    public Cargo getCargoById(int id) {
        Optional<Cargo> cargoId = cargoRepo.findById(id);
        Cargo cargo = cargoId.get();
        return cargo;
    }
    public boolean deleteCargo(int id) {
        Cargo cargo = getCargoById(id);
        boolean flag = false;
        if (cargo != null) {
            cargoRepo.delete(cargo);
            flag = true;
        }
        else
            flag = false;
        return flag;
    }
    public boolean updateCargo(Cargo st){

            return saveCargo(st);
    }
}
