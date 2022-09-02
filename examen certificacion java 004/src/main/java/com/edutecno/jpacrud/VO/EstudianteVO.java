package com.edutecno.jpacrud.VO;

import java.util.List;
import com.edutecno.jpacrud.modelo.Estudiante;



public class EstudianteVO extends GenericVO{
public List<Estudiante> estudiantes;
 
  
  public EstudianteVO(List<Estudiante> estudiantes,String mensaje, String codigo) {
	  super(mensaje,codigo);
	  this.estudiantes=estudiantes;	  
  } 
  
  public EstudianteVO(List<Estudiante> estudiantes) {
		super();
		this.estudiantes = estudiantes;
	}
  
  public EstudianteVO() {
		super();
	}
  
@Override
public int hashCode() {
	// TODO Auto-generated method stub
	return super.hashCode();
}

@Override
public boolean equals(Object obj) {
	// TODO Auto-generated method stub
	return super.equals(obj);
}



public void setEstudiantes(List<Estudiante> estudiantes) {
	this.estudiantes = estudiantes;
}



public List<Estudiante> getEstudiantes() {
	return estudiantes;
}
	
}



  
	

