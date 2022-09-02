package com.edutecno.jpacrud.controlador;

import java.util.Scanner;

import com.edutecno.jpacrud.modelo.Estudiante;
import com.edutecno.jpacrud.service.Impl.EstudianteServiceImpl;

public class Main {

	public static void main(String[] args) {

		/*
		EstudianteServiceImpl svcEstudiante = new EstudianteServiceImpl();
		Estudiante estudiante = new Estudiante();
		estudiante.setId_estudiante(1);
		estudiante.setRut("123123");
		estudiante.setNombre("gerard");
		estudiante.setApellido_pat("naca");
		estudiante.setApellido_mat("hola");
		estudiante.setDireccion("asdasd");
		estudiante.setCodigo_comuna(null);
		estudiante.setCodigo_curso(null);
		svcEstudiante.add(estudiante);
		
		svcEstudiante.getAllEstudiantes();
		
		System.out.println(svcEstudiante.getAllEstudiantes()); */
		
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("Ingrese una 1era fecha en formato DD/MM/AAAA o DD-MM-AAAA: ");
	
			
		String fecha ="0";
		
		System.out.println("Ingrese una 2da fecha en formato DD/MM/AAAA o DD-MM-AAAA: ");
		
		String fecha2 ="0";
				
		fecha = scanner.next();
				
		int dia = Integer.parseInt(fecha.substring(0, 2));
		int mes = Integer.parseInt(fecha.substring(3, 5));
		int anio = Integer.parseInt(fecha.substring(6));


		fecha2 =scanner.next();
		
		int dia2 = Integer.parseInt(fecha2.substring(0, 2));
		int mes2 = Integer.parseInt(fecha2.substring(3, 5));
		int anio2 = Integer.parseInt(fecha2.substring(6));

		
		
		/*
		 * Año a dias ((2022-anioNac)*365) 
		 * 
		 * Mes a dias ((MesActual-MesNac)*30)
		 * 
		 * Dias vividos (diaActual - diaNac)
		 * 
		 * Suma = anio+mes+dia 
		 */
		
		int Edad1 = ((2022-anio)*365)+((5-mes)*30)+(4-dia);
		
		
		int Edad2 = ((2022-anio2)*365)+((5-mes2)*30)+(4-dia2);
		
		
		if (Edad1 > Edad2) {
			
			System.out.println("persona 1 es mayor");
		}
		
		if (Edad1 < Edad2) {
			
			System.out.println("persona 2 es mayor");
		}
		
		if (Edad1 == Edad2) {
			
			System.out.println("Tienen la misma edad");
		}
		
	}
		
	}


