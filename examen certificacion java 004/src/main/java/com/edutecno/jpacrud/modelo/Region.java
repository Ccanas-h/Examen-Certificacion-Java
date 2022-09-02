package com.edutecno.jpacrud.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Region {

	@Id
	private Integer codigo_region;
	
	@Column
	private String nombre;

	
	
	
	
	
	public Region() {
		super();
	}

	public Region(Integer codigo_region, String nombre) {
		super();
		this.codigo_region = codigo_region;
		this.nombre = nombre;
	}

	public Integer getCodigo_region() {
		return codigo_region;
	}

	public void setCodigo_region(Integer codigo_region) {
		this.codigo_region = codigo_region;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	@Override
	public String toString() {
		return "Region [codigo_region=" + codigo_region + ", nombre=" + nombre + "]";
	}
	
	
	
}
