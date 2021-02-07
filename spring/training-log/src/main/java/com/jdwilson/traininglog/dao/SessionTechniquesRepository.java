package com.jdwilson.traininglog.dao;

import com.jdwilson.traininglog.entity.SessionTechniques;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "SessionTechniques", path = "sessionTechniques")
public interface SessionTechniquesRepository  extends JpaRepository<SessionTechniques, Integer> {
}
