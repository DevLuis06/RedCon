
package com.redconexion.model;

/**
 *
 * @author Red Conexión
 */
public class Mercancia {
    private int id_mercancia;
    private String nombre;
    private int cantidad;
    private Unid_medida unid_medida;

    public int getId_mercancia() {
        return id_mercancia;
    }

    public void setId_mercancia(int id_mercancia) {
        this.id_mercancia = id_mercancia;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Unid_medida getUnid_medida() {
        return unid_medida;
    }

    public void setUnid_medida(Unid_medida unid_medida) {
        this.unid_medida = unid_medida;
    }
    
}
