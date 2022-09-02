package com.edutecno.jpacrud.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Tutor {

	@Id
	private Integer codigo_tutor;
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
	@Column
	private String cargo;
	
	@ManyToOne
	@JoinColumn(name = "codigo_comuna", referencedColumnName = "codigo_comuna")
	private Comuna codigo_comuna;
	
	
	
	
	
	

	public Tutor() {
		super();
	}

	public Tutor(Integer codigo_tutor, String rut, String nombre, String apellido_pat, String apellido_mat,
			String direccion, String cargo, Comuna codigo_comuna) {
		super();
		this.codigo_tutor = codigo_tutor;
		this.rut = rut;
		this.nombre = nombre;
		this.apellido_pat = apellido_pat;
		this.apellido_mat = apellido_mat;
		this.direccion = direccion;
		this.cargo = cargo;
		this.codigo_comuna = codigo_comuna;
	}

	public Integer getCodigo_tutor() {
		return codigo_tutor;
	}

	public void setCodigo_tutor(Integer codigo_tutor) {
		this.codigo_tutor = codigo_tutor;
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

	public String getCargo() {
		return cargo;
	}

	public void setCargo(String cargo) {
		this.cargo = cargo;
	}

	public Comuna getCodigo_comuna() {
		return codigo_comuna;
	}

	public void setCodigo_comuna(Comuna codigo_comuna) {
		this.codigo_comuna = codigo_comuna;
	}

	@Override
	public String toString() {
		return "Tutor [codigo_tutor=" + codigo_tutor + ", rut=" + rut + ", nombre=" + nombre + ", apellido_pat="
				+ apellido_pat + ", apellido_mat=" + apellido_mat + ", direccion=" + direccion + ", cargo=" + cargo
				+ ", codigo_comuna=" + codigo_comuna + "]";
	}
	
	
	
	
	
	
}
