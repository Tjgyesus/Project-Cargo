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
@Table(name = "driver")
public class Driver {
    @Id
    @Column(name = "load_id")
    private Integer load_id;
    @Column(name = "driver_name")
    private String driver_name;
    @Column(name = "driver_lic_num")
    private String driver_lic_num;

}
