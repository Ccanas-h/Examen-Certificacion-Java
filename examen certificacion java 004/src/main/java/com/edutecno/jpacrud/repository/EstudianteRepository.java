package com.edutecno.jpacrud.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.edutecno.jpacrud.modelo.Estudiante;



@Repository
 public interface EstudianteRepository extends CrudRepository<Estudiante,Integer>, JpaRepository<Estudiante, Integer>  {
	
	@Query("from Estudiante where codigo_curso like %?1%")
	List<Estudiante> findyByCodigoCurso(String codigo_curso);
	
	@Query("from Estudiante e join e.codigo_curso AS cc join cc.codigo_plan_formativo as cpf join cc.codigo_comuna as cco join cco.codigo_region as cr WHERE cr.codigo_region = ?1 AND cpf.descripcion = ?2")
	List<Estudiante> findByRegionAndCurso(Integer region, String nombreCurso);
	
}
