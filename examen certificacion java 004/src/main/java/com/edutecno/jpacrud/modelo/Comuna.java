package com.edutecno.jpacrud.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Comuna {
	
	@Id
	private Integer codigo_comuna;
	
	@Column
	private String nombre; 
	
	@ManyToOne
	@JoinColumn (name ="codigo_region", referencedColumnName= "codigo_region")
	private Region codigo_region;
	
	
	

	public Comuna() {
		super();
	}

	public Comuna(Integer codigo_comuna, String nombre, Region codigo_region) {
		super();
		this.codigo_comuna = codigo_comuna;
		this.nombre = nombre;
		this.codigo_region = codigo_region;
	}

	public Integer getCodigo_comuna() {
		return codigo_comuna;
	}

	public void setCodigo_comuna(Integer codigo_comuna) {
		this.codigo_comuna = codigo_comuna;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Region getCodigo_region() {
		return codigo_region;
	}

	public void setCodigo_region(Region codigo_region) {
		this.codigo_region = codigo_region;
	}

	@Override
	public String toString() {
		return "Comuna [codigo_comuna=" + codigo_comuna + ", nombre=" + nombre + ", codigo_region=" + codigo_region
				+ "]";
	}
	
	
	
}
