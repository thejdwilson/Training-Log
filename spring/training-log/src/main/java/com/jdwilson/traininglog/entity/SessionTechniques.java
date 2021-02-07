package com.jdwilson.traininglog.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "SessionTechniques")
@Data
public class SessionTechniques {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "sessionTechniqueId")
    private int sessionTechniqueId;

    @ManyToOne
    @JoinColumn(name = "session", nullable = false)
    private Sessions session;

    @ManyToOne
    @JoinColumn(name = "technique", nullable = false)
    private Techniques technique;

    @Column(name = "details")
    private String details;
}
