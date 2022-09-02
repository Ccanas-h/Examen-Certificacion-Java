package com.edutecno.jpacrud.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.edutecno.jpacrud.modelo.Estudiante;
import com.edutecno.jpacrud.modelo.Region;


@Repository
 public interface RegionRepository extends CrudRepository<Region,Integer>  {

	@Query("from Region where nombre like %?1%")
	List<Region> findyByNombreRegion(String nombre);
	
}
