package com.takeo.controller;

import com.takeo.model.Cargo;
import com.takeo.model.Route;
import com.takeo.model.Truck;
import com.takeo.service.TruckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class TruckController {

    @Autowired
    private TruckService truckService;

@RequestMapping("/createTruck")
public String CreateTruck(Model model){
    Truck truck = new Truck();
    model.addAttribute("truck", truck);
    return "truck/truck-create";
    }

    @RequestMapping("/truck")
    public String handleForm(@ModelAttribute Truck truck){
    truckService.saveTruck(truck);
    return "truck/display";

    }
    @RequestMapping("/viewAllTruck")
    public String viewAll(Truck truck, Model model){
        List<Truck> allTruck = truckService.getAllCTruck();
        model.addAttribute("truck", allTruck);
        return "truck/view-truck";
    }
    @RequestMapping("/deleteTruck")
    public String delete(@RequestParam("id") int id){
        boolean flag = truckService.deleteTruck(id);
        if (flag)
            return "redirect:/viewAllTruck";
        else
            return "redirect:/viewAllTruck";
    }

    @RequestMapping("/editTruck")
    public String edit(@RequestParam("id") int id, Model model){
        Truck truck = truckService.getTruckById(id);
        model.addAttribute("truck", truck);
        return "truck/edit-truck";
    }
    @RequestMapping("/updateTruck")
    public String update(Truck truck){
        truckService.updateTruck(truck);
        return "redirect:/viewAllTruck";
    }

}
