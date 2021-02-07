package com.jdwilson.traininglog.dao;

import com.jdwilson.traininglog.entity.Locations;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "Locations", path = "locations")
public interface LocationsRepository extends JpaRepository<Locations, Integer> {
}
