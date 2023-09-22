package com.takeo.repo;

import com.takeo.model.Driver;
import com.takeo.model.Route;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RouteRepo extends JpaRepository<Route, Integer> {
}
