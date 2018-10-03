/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.redconexion.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Vector;

/**
 *
 * @author Red Conexión
 */
public class QueryPuesto {
    
    private int id_puesto;
    private String nombre, descripcion;

    
    
    
    
    
    public static  List<QueryPuesto>Listas_clientes(int no_clie){
        Connection con = null;
        PreparedStatement ps = null;        
        List<QueryPuesto> resul=null;
        int categoria;
        try {
            con = Database.getConnection();
            if(no_clie>0){
                ps = con.prepareStatement("select id_puesto, nombre, descripcion from puesto");
                ps.setInt(1, no_clie);
            }else{
                ps = con.prepareStatement("select id_puesto, nombre, descripcion from puesto");
            }
            //ps.executeUpdate();
            ResultSet obj = ps.executeQuery();            
            resul= retor2_consuta(obj);
            return resul;
        } catch (Exception ex) {
            System.out.println("Error en obtener" + ex.getMessage());                     
        } finally {
            Database.close(con);
        }        
        return resul;
    }
    
    public static List<QueryPuesto> retor2_consuta(ResultSet obj) throws ParseException{
        QueryPuesto interno;    
        List<QueryPuesto> vec2 = null;
        Vector vec=new Vector();
        try{
            while(obj.next()){
                interno=new QueryPuesto();
                interno.setId_puesto(obj.getInt("id_puesto"));
                interno.setNombre(obj.getString("nombre"));
                interno.setDescripcion(obj.getString("descripcion"));
//                
//                Calendar calendar = Calendar.getInstance();
//                calendar.setTime(obj.getDate("fecha_inicial"));
//                calendar.add(Calendar.MONTH,+1);
//                SimpleDateFormat formato2 = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()); 
//                String fecha2 = formato2.format(calendar.getTime());
//                String fecha4= formato2.format(new Date());
//                interno.setFecha_pago(fecha2);
//                interno.setResta(fecha_conparacion(fecha2,fecha4));
                vec.add(interno);
            }
            
        }catch(SQLException ex) {
            System.out.println("Error" + ex.getMessage());
        }
        return vec;        
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
    
}
