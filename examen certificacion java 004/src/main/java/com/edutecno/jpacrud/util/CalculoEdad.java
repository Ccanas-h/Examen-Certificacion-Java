package com.edutecno.jpacrud.util;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.edutecno.jpacrud.repository.EstudianteRepository;


public class CalculoEdad {

	
	public void calculoEdad1(EstudianteRepository repo) {
	


	   String fecha1 = repo.findAll().get(1).getFechaNacimiento().toString();
	   String fecha2 = repo.findAll().get(15).getFechaNacimiento().toString();
	   String fecha3 = repo.findAll().get(22).getFechaNacimiento().toString();
	   String fecha4 = repo.findAll().get(33).getFechaNacimiento().toString();
	   String fecha5 = repo.findAll().get(56).getFechaNacimiento().toString();
	   
System.out.println("\n----METODO PARA CALCULAR LOS DIAS VIVIDOS DE 5 FECHAS DISTINTAS-----");
	   
	   

	   
	   System.out.println("\n---- DIAS VIVIDOS DESDE LA FECHA 1 ----");
	   
	   System.out.println("\nLa fecha de nacimiento 1 es "+ fecha1);
	   
	    int anio1 = Integer.parseInt(fecha1.substring(0,4)); 

	    
	    int mes1 = Integer.parseInt(fecha1.substring(5, 7));


	    int dia1 = Integer.parseInt(fecha1.substring(8, 10));

	   LocalDate fechaNacimiento1 = LocalDate.of(anio1, mes1, dia1);
	   LocalDate today = LocalDate.now();
	   System.out.println(" Hoy estamos a " + today);
	   int diasVividos = (int) ChronoUnit.DAYS.between(fechaNacimiento1, today);
	   
	   System.out.println("  Los dias vividos desde la fecha 1 son "+diasVividos);
	   
	   
	   
System.out.println("\n---- DIAS VIVIDOS DESDE LA FECHA 2 ----");
	   

	   
	   
	   System.out.println("\nLa fecha de nacimiento 2 es "+ fecha2);
	   
	    int anio2 = Integer.parseInt(fecha2.substring(0,4)); 

	    
	    int mes2 = Integer.parseInt(fecha2.substring(5, 7));


	    int dia2 = Integer.parseInt(fecha2.substring(8, 10));

	    
		   LocalDate fechaNacimiento2 = LocalDate.of(anio2, mes2, dia2);
		   System.out.println(" Hoy estamos a " + today);
		   int diasVividos2 = (int) ChronoUnit.DAYS.between(fechaNacimiento2, today);
		   
		   System.out.println("  Los dias vividos desde la fecha 2 son "+diasVividos2);
		   
		   
System.out.println("\n--------------- DIAS VIVIDOS DESDE LA FECHA 3 -------------------");
		   

		   
		   
		   System.out.println("\nLa fecha de nacimiento 3 es "+ fecha3);
		   
		    int anio3 = Integer.parseInt(fecha3.substring(0,4)); 

		    
		    int mes3 = Integer.parseInt(fecha3.substring(5, 7));


		    int dia3 = Integer.parseInt(fecha3.substring(8, 10));

		    
			   LocalDate fechaNacimiento3 = LocalDate.of(anio3, mes3, dia3);
			   System.out.println(" Hoy estamos a " + today);
			   int diasVividos3 = (int) ChronoUnit.DAYS.between(fechaNacimiento3, today);
			   
			   System.out.println("  Los dias vividos desde la fecha 3 son "+diasVividos3);
	   

			   
System.out.println("\n--------------- DIAS VIVIDOS DESDE LA FECHA 4 -------------------");
			   

			   
			   
			   System.out.println("\nLa fecha de nacimiento 4 es "+ fecha4);
			   
			    int anio4 = Integer.parseInt(fecha4.substring(0,4)); 

			    
			    int mes4 = Integer.parseInt(fecha4.substring(5, 7));


			    int dia4 = Integer.parseInt(fecha4.substring(8, 10));

			    
				   LocalDate fechaNacimiento4 = LocalDate.of(anio4, mes4, dia4);
				   System.out.println(" Hoy estamos a " + today);
				   int diasVividos4 = (int) ChronoUnit.DAYS.between(fechaNacimiento4, today);
				   
				   System.out.println("  Los dias vividos desde la fecha 4 son "+diasVividos4);
		   

				   
System.out.println("\n--------------- DIAS VIVIDOS DESDE LA FECHA 5 -------------------");
				   

				   
				   
				   System.out.println("\nLa fecha de nacimiento 5 es "+ fecha5);
				   
				    int anio5 = Integer.parseInt(fecha5.substring(0,4)); 

				    
				    int mes5 = Integer.parseInt(fecha5.substring(5, 7));


				    int dia5 = Integer.parseInt(fecha5.substring(8, 10));

				    
					   LocalDate fechaNacimiento5 = LocalDate.of(anio5, mes5, dia5);
					   System.out.println(" Hoy estamos a " + today);
					   int diasVividos5 = (int) ChronoUnit.DAYS.between(fechaNacimiento5, today);
					   
					   System.out.println("  Los dias vividos desde la fecha 5 son "+diasVividos5);
			   
	}


}
