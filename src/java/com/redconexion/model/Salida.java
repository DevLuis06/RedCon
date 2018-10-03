/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.redconexion.model;

import java.sql.Date;

/**
 *
 * @author Red Conexión
 */
public class Salida {
    private int id_salida;
    private Date fecha;
    private float total_costo;
    private Empleado empleado;

    public int getId_salida() {
        return id_salida;
    }

    public void setId_salida(int id_salida) {
        this.id_salida = id_salida;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public float getTotal_costo() {
        return total_costo;
    }

    public void setTotal_costo(float total_costo) {
        this.total_costo = total_costo;
    }

    public Empleado getEmpleado() {
        return empleado;
    }

    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }
}
