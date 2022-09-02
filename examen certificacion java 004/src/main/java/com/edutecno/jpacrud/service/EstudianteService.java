package com.edutecno.jpacrud.service;

import com.edutecno.jpacrud.VO.EstudianteVO;
import com.edutecno.jpacrud.modelo.Estudiante;



public interface EstudianteService {

	public EstudianteVO getAllEstudiantes();

	public EstudianteVO findById(Integer id_estudiante);

	public EstudianteVO add(Estudiante estudiante);

	public EstudianteVO update(Estudiante estudiante);

	public EstudianteVO delete(Estudiante estudiante);

	public EstudianteVO findByCursoContaining(String codigo_curso);
	
	public EstudianteVO findByRegionAndCurso(Integer region, String nombreCurso);


	
}
