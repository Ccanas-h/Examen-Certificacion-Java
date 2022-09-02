package com.edutecno.jpacrud.service.Impl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import javax.transaction.Transactional;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.edutecno.jpacrud.VO.CursoVO;
import com.edutecno.jpacrud.modelo.Curso;
import com.edutecno.jpacrud.repository.CursoRepository;
import com.edutecno.jpacrud.service.CursoService;

@Service
public class CursoServiceImpl implements CursoService {

	private static final Logger log = LoggerFactory.getLogger(CursoServiceImpl.class);

	@Autowired
	CursoRepository dao;

	CursoVO respuesta;


	@Override
	@Transactional
	public CursoVO findByCodigoCurso(String codigo_curso) {
		respuesta = new CursoVO(new ArrayList<Curso>(), "ocurrio un error", "102");
		try {
			Curso curso=dao.findById(codigo_curso).get();
			respuesta.setMensaje("se encuentra producto:" + curso.getCodigo_curso());
			respuesta.setCodigo("0");
			respuesta.cursos.add(curso);

		} catch (Exception e) {
			log.error("Curso Service: Error en metodo findById()", e);
		}
		return respuesta;
	}
	
	
	@Override
	@Transactional
	public CursoVO getAllCursos() {
		respuesta = new CursoVO(new ArrayList<Curso>(), "ocurrio un error", "102");
		try {
			respuesta.setCursos((List<Curso>) dao.findAll());
			System.out.println(respuesta.getCursos().toString());;
			
			respuesta.setMensaje("se han encontrado cursos");
			respuesta.setCodigo("0");
			respuesta.getCursos();
			System.out.println(respuesta.getCursos());

		} catch (Exception e) {
			log.trace("Curso Service: Error en metodo getAllCursos()", e);
		}
		return respuesta;
	}


	@Override
	public CursoVO add(Curso curso) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public CursoVO update(Curso curso) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public CursoVO delete(Curso curso) {
		// TODO Auto-generated method stub
		return null;
	}
	

}


	

		
	


