package com.jdwilson.traininglog.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "SessionNotes")
@Data
public class SessionNotes {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "sessionNoteId")
    private int sessionNoteId;

    @ManyToOne
    @JoinColumn(name = "session", nullable = false)
    private Sessions session;

    @Column(name = "details")
    private String details;
}
