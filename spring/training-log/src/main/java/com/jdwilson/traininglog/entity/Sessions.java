package com.jdwilson.traininglog.entity;

import lombok.Data;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Time;
import java.util.Set;

@Entity
@Table(name="Sessions")
@Data
public class Sessions {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "sessionId")
    private int sessionId;

    @Column(name = "date")
    private Date date;

    @Column(name = "length")
    private Time length;

    @Column(name = "gi")
    private boolean gi;

    @ManyToOne
    @JoinColumn(name = "location", nullable = false)
    private Locations location;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "session")
    private Set<SessionNotes> sessionNotes;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "session")
    private Set<SessionTechniques> sessionTechniques;
}
