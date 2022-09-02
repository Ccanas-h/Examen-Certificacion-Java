package com.edutecno.jpacrud.service;

import com.edutecno.jpacrud.VO.CursoVO;
import com.edutecno.jpacrud.modelo.Curso;



public interface CursoService {

	public CursoVO getAllCursos();

	public CursoVO add(Curso curso);

	public CursoVO update(Curso curso);

	public CursoVO delete(Curso curso);

	CursoVO findByCodigoCurso(String codigo_curso);


	
}
