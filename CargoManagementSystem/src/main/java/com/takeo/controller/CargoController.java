package com.takeo.controller;

import com.takeo.model.Cargo;
import com.takeo.service.CargoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.Banner;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class CargoController {

    @Autowired
    private CargoService cargoService;

@RequestMapping(value = "/createCargo")
public String CreateCargo(Model model){
    Cargo cargo = new Cargo();
    model.addAttribute("cargo", cargo);
    return "cargo/cargo-create";
    }

    @RequestMapping(value = "/cargo")
    public String handleForm(@ModelAttribute Cargo cargo)
    {
        cargoService.saveCargo(cargo);
        return "cargo/display";
    }

    @RequestMapping("/viewAll")
    public String viewAll(Cargo cargo, Model model){
        List<Cargo> allCargo = cargoService.getAllCargo();
        model.addAttribute("cargo", allCargo);
        return "cargo/view";
    }
    @RequestMapping("/deleteCargo")
    public String delete(@RequestParam("id") int id){
        boolean flag = cargoService.deleteCargo(id);
        if (flag)
            return "redirect:/viewAll";
        else
            return "redirect:/viewAll";
    }

    @RequestMapping("/editCargo")
    public String edit(@RequestParam("id") int id, Model model){
        Cargo cargo = cargoService.getCargoById(id);
        model.addAttribute("cargo", cargo);
        return "cargo/edit";
    }
    @RequestMapping("/update")
    public String update(Cargo cargo){
        cargoService.updateCargo(cargo);
        return "redirect:/viewAll";
    }

}
