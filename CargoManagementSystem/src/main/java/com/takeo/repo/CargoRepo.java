package com.takeo.repo;

import com.takeo.model.Cargo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CargoRepo extends JpaRepository<Cargo, Integer> {
}
