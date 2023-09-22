package com.takeo.service;

import com.takeo.model.Cargo;
import com.takeo.model.Route;
import com.takeo.repo.RouteRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RouteService {

    @Autowired
    private RouteRepo routeRepo;


    public boolean saveRoute(Route route){
        Route routeSave = routeRepo.save(route);

        if (routeSave != null)
            return true;
        else
            return false;
    }
    public List<Route> getAllRoute() {
        List<Route> routeRecords = routeRepo.findAll();
        return routeRecords;
    }

    public Route getRouteById(int id) {
        Optional<Route> routeId = routeRepo.findById(id);
        Route route = routeId.get();
        return route;
    }
    public boolean deleteRoute(int id) {
        Route route = getRouteById(id);
        boolean flag = false;
        if (route != null) {
            routeRepo.delete(route);
            flag = true;
        }
        else
            flag = false;
        return flag;
    }
    public boolean updateRoute(Route st){

        return saveRoute(st);
    }
}
