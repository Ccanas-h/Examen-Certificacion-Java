package com.edutecno.jpacrud.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Plan_formativo {

	@Id
	private String codigo_plan_formativo;
	
	@Column
	private String descripcion;
	@Column
	private Integer duracion_horas;
	
	
	
	
	
	public Plan_formativo() {
		super();
	}

	public Plan_formativo(String codigo_plan_formativo, String descripcion, Integer duracion_horas) {
		super();
		this.codigo_plan_formativo = codigo_plan_formativo;
		this.descripcion = descripcion;
		this.duracion_horas = duracion_horas;
	}
	
	
	public String getCodigo_plan_formativo() {
		return codigo_plan_formativo;
	}
	public void setCodigo_plan_formativo(String codigo_plan_formativo) {
		this.codigo_plan_formativo = codigo_plan_formativo;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public Integer getDuracion_horas() {
		return duracion_horas;
	}
	public void setDuracion_horas(Integer duracion_horas) {
		this.duracion_horas = duracion_horas;
	}


	@Override
	public String toString() {
		return "Plan_formativo [codigo_plan_formativo=" + codigo_plan_formativo + ", descripcion=" + descripcion
				+ ", duracion_horas=" + duracion_horas + "]";
	}
	
	
	
}
