package com.redconexion.model;

import java.math.BigInteger;

/**
 *
 * @author Red Conexión
 */
public class Segmento_red {
    private int id_segmento;
    private String nombre;
    private String descripcion;
    private BigInteger dir_ip;

    public int getId_segmento() {
        return id_segmento;
    }

    public void setId_segmento(int id_segmento) {
        this.id_segmento = id_segmento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public BigInteger getDir_ip() {
        return dir_ip;
    }

    public void setDir_ip(BigInteger dir_ip) {
        this.dir_ip = dir_ip;
    }
}
