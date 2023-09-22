package com.takeo.controller;

import com.takeo.model.Route;
import com.takeo.service.RouteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class RouteController {

    @Autowired
    private RouteService routeService;

@RequestMapping("/createRoute")
public String CreateRoute(Model model){
    Route route = new Route();
    model.addAttribute("route", route);
    return "route/route-create";
    }

    @RequestMapping(value = "/route")
    public String handleForm(@ModelAttribute Route route){

    routeService.saveRoute(route);
    return "route/display";
    }
    @RequestMapping("/viewAllRoute")
    public String viewAll(Route route, Model model){
        List<Route> allRoute = routeService.getAllRoute();
        model.addAttribute("route", allRoute);
        return "route/view-route";
    }
    @RequestMapping("/deleteRoute")
    public String delete(@RequestParam("id") int id){
        boolean flag = routeService.deleteRoute(id);
        if (flag)
            return "redirect:/viewAllRoute";
        else
            return "redirect:/viewAllRoute";
    }

    @RequestMapping("/editRoute")
    public String edit(@RequestParam("id") int id, Model model){
        Route route = routeService.getRouteById(id);
        model.addAttribute("route", route);
        return "route/edit-route";
    }
    @RequestMapping("/updateRoute")
    public String update(Route route){
        routeService.updateRoute(route);
        return "redirect:/viewAllRoute";
    }
}
