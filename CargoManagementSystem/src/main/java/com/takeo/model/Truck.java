package com.takeo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "truck")
public class Truck {
    @Id
    @Column(name = "load_id")
    private Integer load_id;
    @Column(name = "truck_num")
    private String truckNum;
    @Column(name = "truck_model")
    private String truckModel;
    @Column(name = "truck_model_year")
    private Integer truckModelYear;
    @Column(name = "truck_lic_plate")
    private String truckLicPlate;


}
