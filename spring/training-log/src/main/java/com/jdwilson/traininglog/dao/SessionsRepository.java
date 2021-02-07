package com.jdwilson.traininglog.dao;

import com.jdwilson.traininglog.entity.Sessions;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "Sessions", path = "sessions")
public interface SessionsRepository extends JpaRepository<Sessions, Integer> {
}
