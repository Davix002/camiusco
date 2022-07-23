package org.software.category;

//import java.sql.Statement;

public class Category {
	private long id;
	private String nombre;
	private String descripcion;
	private String imagen;
	private int publicado;

	public Category() {
		super();
	}

	public Category(long id, String nombre, String descripcion,String imagen, int publicado) {
		super();
		this.id = id;
		this.nombre=nombre;
		this.descripcion=descripcion;
		this.imagen=imagen;
		this.publicado=publicado;
	}

	public long getId() {
		return id;
	}

	public String getNombre() {
		return nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public String getImagen() {
		return imagen;
	}

	public int getPublicado() {
		return publicado;
	}

	public void setId(long id) {
		this.id = id;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public void setPublicado(int publicado) {
		this.publicado = publicado;
	}

		
}