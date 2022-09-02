package com.edutecno.jpacrud;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.edutecno.jpacrud.repository.EstudianteRepository;
import com.edutecno.jpacrud.util.CalculoEdad;

@SpringBootApplication
public class JpacrudApplication {

	private static final Logger log= LoggerFactory.getLogger(JpacrudApplication.class);
	
	public static void main(String[] args) {
		SpringApplication.run(JpacrudApplication.class, args);
	}
	
	  	
	@Bean
   public CommandLineRunner inicioApp(EstudianteRepository repo) {
	   return (args)->{
		   
		   CalculoEdad calculoEdad = new CalculoEdad();
		   calculoEdad.calculoEdad1(repo);
		   
		   
		
		
   };
	
	
}  
	

}