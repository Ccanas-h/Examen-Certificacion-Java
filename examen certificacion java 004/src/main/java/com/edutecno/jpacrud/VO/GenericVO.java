package com.edutecno.jpacrud.VO;

public class GenericVO {
	String mensaje;
	String codigo;
	
	public GenericVO() {
		super();
	}
	public GenericVO(String mensaje, String codigo) {
		super();
		this.mensaje = mensaje;
		this.codigo = codigo;
	}
	public String getMensaje() {
		return mensaje;
	}
	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	@Override
	public String toString() {
		return "GenericVO [mensaje=" + mensaje + ", codigo=" + codigo + "]";
	}
	
	
	
}
