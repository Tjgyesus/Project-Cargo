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
@Table(name = "route")
public class Route {
    @Id
    @Column(name = "load_id")
    private Integer load_id;
    @Column(name = "pickup_address")
    private String pickupAddress;
    @Column(name = "delivery_address")
    private String deliveryAddress;
    @Column(name = "distance_miles")
    private double distanceMiles;


}
