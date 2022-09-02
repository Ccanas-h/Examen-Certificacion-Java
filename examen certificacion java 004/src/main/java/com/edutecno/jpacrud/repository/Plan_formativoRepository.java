package com.edutecno.jpacrud.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.edutecno.jpacrud.modelo.Estudiante;
import com.edutecno.jpacrud.modelo.Plan_formativo;


@Repository
 public interface Plan_formativoRepository extends CrudRepository<Plan_formativo,String>  {

	@Query("from Plan_formativo where descripcion like %?1%")
	List<Plan_formativo> findyByNombrePlanFormativo(String descripcion);
	
}
