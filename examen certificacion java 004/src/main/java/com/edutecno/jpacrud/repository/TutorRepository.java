package com.edutecno.jpacrud.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.edutecno.jpacrud.modelo.Estudiante;


@Repository
 public interface TutorRepository extends CrudRepository<Estudiante,Integer>  {

	
}
