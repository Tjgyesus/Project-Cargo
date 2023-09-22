package com.takeo.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "cargo")
public class Cargo {
    @Id
    @Column(name = "load_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer load_id;
    @Column(name = "name")
    private String name;
    @Column(name = "description")
    private String description;
    @Column(name = "weight")
    private double weight;
    @Column(name = "volume")
    private double volume;
    @Column(name = "pickup_date")
    private Date pickupDate;
    @Column(name = "delivery_date")
    private Date deliveryDate;

}
