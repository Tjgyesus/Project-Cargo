package com.takeo.controller;

import com.takeo.model.Cargo;
import com.takeo.model.Driver;
import com.takeo.repo.DriverRepo;
import com.takeo.service.DriverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class DriverController {

    @Autowired
    private DriverService driverService;

@RequestMapping("/createDriver")
public String CreateDriver(Model model){
    Driver driver = new Driver();
    model.addAttribute("driver", driver);
    return "driver/driver-create";
    }

   @RequestMapping("/display")
   public String handleform(@ModelAttribute Driver driver){
    driverService.saveDriver(driver);
    return "driver/display";
    }
    @RequestMapping("/viewAllDriver")
    public String viewAll(Driver driver, Model model){
        List<Driver> allDriver = driverService.getAllDriver();
        model.addAttribute("driver", allDriver);
        return "driver/view-driver";
    }
    @RequestMapping("/deleteDriver")
    public String delete(@RequestParam("id") int id){
        boolean flag = driverService.deleteDriver(id);
        if (flag)
            return "redirect:/viewAllDriver";
        else
            return "redirect:/viewAllDriver";
    }

    @RequestMapping("/editDriver")
    public String edit(@RequestParam("id") int id, Model model){
        Driver driver = driverService.getDriverById(id);
        model.addAttribute("driver", driver);
        return "driver/edit-driver";
    }
    @RequestMapping("/updateDriver")
    public String update(Driver driver){
        driverService.updateDriver(driver);
        return "redirect:/viewAllDriver";
    }

}
