package com.jdwilson.traininglog.dao;

import com.jdwilson.traininglog.entity.Techniques;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "Techniques", path = "techniques")
public interface TechniquesRepository extends JpaRepository<Techniques, Integer> {
}
