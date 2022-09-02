package com.edutecno.jpacrud.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.edutecno.jpacrud.modelo.Curso;
import com.edutecno.jpacrud.modelo.Estudiante;


@Repository
 public interface CursoRepository extends CrudRepository<Curso, String>  {

	@Query("from Curso where codigo_curso like %?1%")
	List<Curso> findyByNombreCurso(String codigo_curso);
	
}
