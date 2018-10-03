/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.redconexion.bean;

import com.redconexion.dao.QueryPuesto;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Red Conexión
 */
public class PuestoChido {
    private List<QueryPuesto> consulta_clientes;
    private int id_puesto;
    private String nombre, descripcion;
    private static int cont=1;
    
    public List<QueryPuesto> obtener_clientes() throws SQLException{ 
        if(cont>0){
            System.out.println("entro a obtener lista");
            consulta_clientes = QueryPuesto.Listas_clientes(0);
            cont=0;
        }
        return consulta_clientes;
    }

    public int getId_puesto() {
        return id_puesto;
    }

    public void setId_puesto(int id_puesto) {
        this.id_puesto = id_puesto;
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
    
    
    
    
//     public void reinicio(){
//        System.out.println(""+cont);
//        id=0;
//        if(cont==0){
//            System.out.println("link entro");
//            setLin_pago("index");
//            setLin_info("index");
//        }
//        cont=1;
//        System.out.println("reinicio: "+lin_pago);
//    }
}
