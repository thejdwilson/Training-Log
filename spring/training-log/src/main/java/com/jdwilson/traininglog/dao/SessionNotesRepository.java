package com.jdwilson.traininglog.dao;

import com.jdwilson.traininglog.entity.SessionNotes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "SessionNotes", path = "sessionNotes")
public interface SessionNotesRepository extends JpaRepository<SessionNotes, Integer> {
}
