/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.redconexion.model;

import java.awt.Image;
import java.sql.Date;

/**
 *
 * @author Red Conexión
 */
public class Pago {
    private int id_pago;

    public int getId_pago() {
        return id_pago;
    }

    public void setId_pago(int id_pago) {
        this.id_pago = id_pago;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Empleado getEmpleado() {
        return empleado;
    }

    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Image getFoto() {
        return foto;
    }

    public void setFoto(Image foto) {
        this.foto = foto;
    }

    public Tipo_pago getTipo_pago() {
        return tipo_pago;
    }

    public void setTipo_pago(Tipo_pago tipo_pago) {
        this.tipo_pago = tipo_pago;
    }

    public float getMonto() {
        return monto;
    }

    public void setMonto(float monto) {
        this.monto = monto;
    }
    private Cliente cliente;
    private Empleado empleado;
    private Date fecha;
    private Image foto;
    private Tipo_pago tipo_pago;
    private float monto;
}
