package com.edutecno.jpacrud.modelo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
public class Estudiante {

	@Id
	private Integer id_estudiante;
	@Column
	private String rut;
	@Column
	private String nombre;
	@Column
	private String apellido_pat;
	@Column
	private String apellido_mat;
	@Column
	private String direccion;
	
	@ManyToOne
	@JoinColumn(name = "codigo_comuna", referencedColumnName = "codigo_comuna")
	private Comuna codigo_comuna;
	
	@ManyToOne
	@JoinColumn(name = "codigo_curso", referencedColumnName = "codigo_curso")
	private Curso codigo_curso;
	
	@Column(name = "fecha_nacimiento")
	@DateTimeFormat(pattern ="dd/MM/yyyy")
	private Date fechaNacimiento;
	
	
	

	public Estudiante() {
		super();
	}

	public Estudiante(Integer id_estudiante, String rut, String nombre, String apellido_pat, String apellido_mat,
			String direccion, Comuna codigo_comuna, Curso codigo_curso, Date fechaNacimiento) {
		super();
		this.id_estudiante = id_estudiante;
		this.rut = rut;
		this.nombre = nombre;
		this.apellido_pat = apellido_pat;
		this.apellido_mat = apellido_mat;
		this.direccion = direccion;
		this.codigo_comuna = codigo_comuna;
		this.codigo_curso = codigo_curso;
		this.fechaNacimiento = fechaNacimiento;
	}

	public Integer getId_estudiante() {
		return id_estudiante;
	}

	public void setId_estudiante(Integer id_estudiante) {
		this.id_estudiante = id_estudiante;
	}

	public String getRut() {
		return rut;
	}

	public void setRut(String rut) {
		this.rut = rut;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido_pat() {
		return apellido_pat;
	}

	public void setApellido_pat(String apellido_pat) {
		this.apellido_pat = apellido_pat;
	}

	public String getApellido_mat() {
		return apellido_mat;
	}

	public void setApellido_mat(String apellido_mat) {
		this.apellido_mat = apellido_mat;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public Comuna getCodigo_comuna() {
		return codigo_comuna;
	}

	public void setCodigo_comuna(Comuna codigo_comuna) {
		this.codigo_comuna = codigo_comuna;
	}

	public Curso getCodigo_curso() {
		return codigo_curso;
	}

	public void setCodigo_curso(Curso codigo_curso) {
		this.codigo_curso = codigo_curso;
	}

	public Date getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(Date fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	@Override
	public String toString() {
		return "Estudiante [id_estudiante=" + id_estudiante + ", rut=" + rut + ", nombre=" + nombre + ", apellido_pat="
				+ apellido_pat + ", apellido_mat=" + apellido_mat + ", direccion=" + direccion + ", codigo_comuna="
				+ codigo_comuna + ", codigo_curso=" + codigo_curso + ", fechaNacimiento=" + fechaNacimiento + "]";
	}

	
	
	
	
}
