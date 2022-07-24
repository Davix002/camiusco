package org.software.product;


public class Product {
	long id;
	String nombre;
	long precio;
	String talla;
	String color;
	String descripcion;
	String imagen;
	long rating_cache;
	int rating_count;
	int publicado;
	int existencias;
	String comentarios;
	int categoria_id;
	public Product() {
		super();
	}

	public Product(long id,String nombre,long precio,String talla,String color,String descripcion,String imagen,
	long rating_cache,int rating_count,int publicado,int existencias,String comentarios,int categoria_id) {

		super();
		this.id=id;
	this.nombre=nombre;
	this.precio=precio;
	this.talla=talla;
	this.color=color;
	this.descripcion=descripcion;
	this.imagen=imagen;
	this.rating_cache=rating_cache;
	this.rating_count=rating_count;
	this.publicado=publicado;
	this.existencias=existencias;
	this.comentarios=comentarios;
	this.categoria_id=categoria_id;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public long getPrecio() {
		return precio;
	}

	public void setPrecio(long precio) {
		this.precio = precio;
	}

	public String getTalla() {
		return talla;
	}

	public void setTalla(String talla) {
		this.talla = talla;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public long getRating_cache() {
		return rating_cache;
	}

	public void setRating_cache(long rating_cache) {
		this.rating_cache = rating_cache;
	}

	public int getRating_count() {
		return rating_count;
	}

	public void setRating_count(int rating_count) {
		this.rating_count = rating_count;
	}

	public int getPublicado() {
		return publicado;
	}

	public void setPublicado(int publicado) {
		this.publicado = publicado;
	}

	public int getExistencias() {
		return existencias;
	}

	public void setExistencias(int existencias) {
		this.existencias = existencias;
	}

	public String getComentarios() {
		return comentarios;
	}

	public void setComentarios(String comentarios) {
		this.comentarios = comentarios;
	}

	public int getCategoria_id() {
		return categoria_id;
	}

	public void setCategoria_id(int categoria_id) {
		this.categoria_id = categoria_id;
	}

	

}
