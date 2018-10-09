package com.vitrocar.model;
// Generated 17/08/2018 01:32:34 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * CategoriaPieza generated by hbm2java
 */
public class CategoriaPieza  implements java.io.Serializable {


     private int idCatPieza;
     private String nombre;
     private Set<Pieza> piezas = new HashSet<Pieza>(0);

    public CategoriaPieza() {
    }

	
    public CategoriaPieza(int idCatPieza) {
        this.idCatPieza = idCatPieza;
    }
    public CategoriaPieza(int idCatPieza, String nombre, Set<Pieza> piezas) {
       this.idCatPieza = idCatPieza;
       this.nombre = nombre;
       this.piezas = piezas;
    }
   
    public int getIdCatPieza() {
        return this.idCatPieza;
    }
    
    public void setIdCatPieza(int idCatPieza) {
        this.idCatPieza = idCatPieza;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public Set<Pieza> getPiezas() {
        return this.piezas;
    }
    
    public void setPiezas(Set<Pieza> piezas) {
        this.piezas = piezas;
    }




}

