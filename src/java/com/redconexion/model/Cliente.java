/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.redconexion.model;

import java.math.BigInteger;
import java.sql.Date;

/**
 *
 * @author Red Conexión
 */
public class Cliente {
    private int id_cliente;
    private String nombre;

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getCelular() {
        return celular;
    }

    public void setCelular(int celular) {
        this.celular = celular;
    }

    public Date getFecha_inicio() {
        return fecha_inicio;
    }

    public void setFecha_inicio(Date fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }

    public String getRfc() {
        return rfc;
    }

    public void setRfc(String rfc) {
        this.rfc = rfc;
    }

    public String getNombre_fiscal() {
        return nombre_fiscal;
    }

    public void setNombre_fiscal(String nombre_fiscal) {
        this.nombre_fiscal = nombre_fiscal;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public Servicio getServicio() {
        return servicio;
    }

    public void setServicio(Servicio servicio) {
        this.servicio = servicio;
    }

    public Corte getCorte() {
        return corte;
    }

    public void setCorte(Corte corte) {
        this.corte = corte;
    }

    public Segmento_red getSegmento_red() {
        return segmento_red;
    }

    public void setSegmento_red(Segmento_red segmento_red) {
        this.segmento_red = segmento_red;
    }

    public BigInteger getIp() {
        return ip;
    }

    public void setIp(BigInteger ip) {
        this.ip = ip;
    }

    public double getLatitud() {
        return latitud;
    }

    public void setLatitud(double latitud) {
        this.latitud = latitud;
    }

    public double getLongitud() {
        return longitud;
    }

    public void setLongitud(double longitud) {
        this.longitud = longitud;
    }
    private String apellido;
    private int celular;
    private Date fecha_inicio;
    private String rfc;
    private String nombre_fiscal;
    private Status status;
    private Servicio servicio;
    private Corte corte;
    private Segmento_red segmento_red;
    private BigInteger ip;
    private double latitud;
    private double longitud;
}
