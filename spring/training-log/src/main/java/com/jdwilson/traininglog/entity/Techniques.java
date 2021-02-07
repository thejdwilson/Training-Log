package com.jdwilson.traininglog.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "Techniques")
@Data
public class Techniques {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "techniqueId")
    private int techniqueId;

    @Column(name = "name")
    private String name;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "technique")
    private Set<SessionTechniques> sessionTechniques;
}
