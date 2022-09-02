package com.edutecno.jpacrud.service.Impl;

import java.util.ArrayList;
import java.util.List;
import javax.transaction.Transactional;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.edutecno.jpacrud.VO.EstudianteVO;
import com.edutecno.jpacrud.modelo.Estudiante;
import com.edutecno.jpacrud.repository.EstudianteRepository;
import com.edutecno.jpacrud.service.EstudianteService;

@Service
public class EstudianteServiceImpl implements EstudianteService {

	private static final Logger log = LoggerFactory.getLogger(EstudianteServiceImpl.class);

	@Autowired
	EstudianteRepository dao;

	EstudianteVO respuesta;


	@Override
	@Transactional
	public EstudianteVO findById(Integer id_estudiante) {
		respuesta = new EstudianteVO(new ArrayList<Estudiante>(), "ocurrio un error", "102");
		try {
			Estudiante estudiante=dao.findById(id_estudiante).get();
			respuesta.setMensaje("se encuentra producto:" + estudiante.getNombre());
			respuesta.setCodigo("0");
			respuesta.estudiantes.add(estudiante);

		} catch (Exception e) {
			log.error("Estudiante Service: Error en metodo findById()", e);
		}
		return respuesta;
	}
	
	@Override
	@Transactional
	public EstudianteVO findByCursoContaining(String codigo_curso) {
		respuesta = new EstudianteVO(new ArrayList<Estudiante>(), "ocurrio un error", "102");
		try {
			respuesta.setEstudiantes((List<Estudiante>) dao.findyByCodigoCurso(codigo_curso));
			respuesta.setMensaje("se encuentran estudiantes");
			respuesta.setCodigo("0");

			System.out.println("Metodo Find by codigo curso. Encontramos: ");
			System.out.println(respuesta.getEstudiantes().get(7).getCodigo_curso());

		} catch (Exception e) {
			log.error("Estudiante Service: Error en metodo findByCursoContaining()", e);
		}
		return respuesta;
	}


	@Override
	@Transactional
	public EstudianteVO getAllEstudiantes() {
		respuesta = new EstudianteVO(new ArrayList<Estudiante>(), "ocurrio un error", "102");
		try {
			respuesta.setEstudiantes((List<Estudiante>) dao.findAll());
			respuesta.setMensaje("se han encontrado usuarios");
			respuesta.setCodigo("0");
			respuesta.getEstudiantes();
			System.out.println(respuesta.getEstudiantes());

		} catch (Exception e) {
			log.trace("Estudiante Service: Error en metodo getAllEstudiantes()", e);
		}
		return respuesta;
	}


	@Override
	@Transactional
	public EstudianteVO add(Estudiante estudiante) {
		respuesta = new EstudianteVO(new ArrayList<Estudiante>(), "ocurrio un error", "102");
		try {
			dao.save(estudiante);
			respuesta.setMensaje("se agrego :" + estudiante.getNombre());
			respuesta.setCodigo("0");

		} catch (Exception e) {
			log.trace("Estudiante Service: Error en metodo add()", e);
		}
		return respuesta;
	}

	@Override
	@Transactional
	public EstudianteVO update(Estudiante estudiante) {
	respuesta = new EstudianteVO(new ArrayList<Estudiante>(), "ocurrio un error", "102");
		try {
			dao.save(estudiante);
			respuesta.setMensaje("se actualizo producto :" + estudiante.getNombre());
			respuesta.setCodigo("0");

		} catch (Exception e) {
			log.error("Estudiante Service: Error en metodo update()", e);
		}
		return respuesta;

		
	}

	@Override
	@Transactional
	public EstudianteVO delete(Estudiante estudiante) {
		respuesta = new EstudianteVO(new ArrayList<Estudiante>(), "ocurrio un error", "102");
		try {
			respuesta.setMensaje("se borro usuario :" +estudiante.getNombre());
			
			dao.delete(estudiante);
			respuesta.setCodigo("0");

		} catch (Exception e) {
			log.trace("Usuario Service: Error en metodo delete()", e);
		}
		return respuesta;
	}
	
	@Override
	@Transactional
	public EstudianteVO findByRegionAndCurso(Integer region, String nombreCurso) {
		respuesta = new EstudianteVO(new ArrayList<Estudiante>(), "ocurrio un error", "102");
		try {
		
			respuesta.setEstudiantes((List<Estudiante>) dao.findByRegionAndCurso(region, nombreCurso));
			respuesta.setMensaje("se han encontrado usuarios");
			respuesta.setCodigo("0");
			respuesta.getEstudiantes();
			System.out.println(respuesta.getEstudiantes().toString());
			
		} catch (Exception e) {
			log.trace("Estudiante Service: Error en metodo getAllEstudiantes()", e);
		}
		return respuesta;
	
	}
}


	

		
	


