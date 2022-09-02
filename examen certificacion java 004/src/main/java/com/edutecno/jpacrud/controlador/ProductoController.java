package com.edutecno.jpacrud.controlador;

import java.util.ArrayList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.edutecno.jpacrud.VO.EstudianteVO;

import com.edutecno.jpacrud.modelo.Estudiante;
import com.edutecno.jpacrud.service.CursoService;
import com.edutecno.jpacrud.service.EstudianteService;

@Controller
public class ProductoController {
	
	private static final Logger log = LoggerFactory.getLogger(ProductoController.class);
	
	@Autowired
	private EstudianteService svc;
	
	@Autowired
	private CursoService svcCurso;
	
	public ProductoController() {
		new ArrayList<Estudiante>();
		
	}
	public void setEstudiante(Estudiante estudiante) {
	}
	
@GetMapping({"/","/home"})
public String home(Model model) {
	model.addAttribute("VO",svc.getAllEstudiantes());
	model.addAttribute("cursos", svcCurso.getAllCursos().getCursos());

	return "home";
	
}




@PostMapping("/buscar")
public ModelAndView buscar(Model model, @RequestParam String regionString,  @RequestParam String nombreCurso, RedirectAttributes ra) {
	Integer region = Integer.parseInt(regionString);
	EstudianteVO resultado = svc.findByRegionAndCurso(region, nombreCurso);
    ra.addFlashAttribute("mensaje", resultado.getMensaje());
    if (resultado.getCodigo().equals("0")) {
    	log.info("Encontrados" + region +" y "+ nombreCurso);
        model.addAttribute("mensaje", resultado.getMensaje());
        model.addAttribute("VO", resultado.getCodigo());
		model.addAttribute("VO2", svc.findByRegionAndCurso(region, nombreCurso));
		model.addAttribute("cursos", svcCurso.getAllCursos().getCursos());
        return new ModelAndView("buscar");
    } else {
    	try {
       
        resultado = svc.getAllEstudiantes();
        return new ModelAndView("redirect:/home");
    } catch (Exception e) {
        log.error("Error al intentar buscar", e);
    }
    	return new ModelAndView("redirect:/home");
    }
}









}