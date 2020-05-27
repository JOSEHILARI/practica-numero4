package com.emergentes.modelo;

public class Libro {
    private int id;
    private String titulo;
    private String contenido;
    private String fecha_creacion;
    private String autor;

    public Libro() {
        this.id = 0;
        this.titulo = "";
        this.contenido = "";
        this.fecha_creacion = "";
        this.autor = "";
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public String getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(String fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

   
    
    
}
