/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.redconexion.dao;

import com.redconexion.bean.PuestoBean;
import com.redconexion.model.Puesto;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Vector;
import java.util.ArrayList;
/**
 *
 * @author Red Conexión
 */
public class PuestoDAO {
    
   private int id_puesto;
   private String nombre, descripcion;
  

//    public void registrar(Puesto pue) throws Exception {
//        try {
//            this.Conectar();
//            PreparedStatement st = this.getCon().prepareStatement("insert into puesto(nombre,descripcion) values(?,?);");
//            st.setString(1, pue.getNombre());
//            st.setString(2, pue.getDescripcion());
//            st.executeUpdate();
//        } catch (Exception e) {
//            throw e;
//        } finally {
//            this.cerrar();
//        }
//    }

   /* public List<PuestoDAO> listar() throws Exception {
        List<PuestoDAO> lista;
        Connection con = null;
        ResultSet rs= null;
        PreparedStatement st = null;
        try {
            con = Database.getConnection();
            st = con.prepareStatement("select id_puesto,nombre,descripcion from puesto;");
            rs = st.executeQuery();
            lista = new ArrayList<>();
            
            while (rs.next()) {
                PuestoDAO puest = new PuestoDAO();
                puest.setId_puesto(rs.getInt("id_puesto"));
                puest.setNombre(rs.getString("nombre"));
                puest.setDescripcion(rs.getString("descripcion"));
                
                lista.add(puest);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            Database.close(con);
        }
        return lista;
    }*/
    
    public List<Puesto> listar() throws Exception {
        List<Puesto> lista;
        Connection con = null;
        ResultSet rs= null;
        PreparedStatement st = null;
        try {
            con = Database.getConnection();
            st = con.prepareStatement("select id_puesto,nombre,descripcion from puesto;");
            rs = st.executeQuery();
            lista = new ArrayList<>();
            
            while (rs.next()) {
                Puesto puest = new Puesto();
                puest.setId_puesto(rs.getInt("id_puesto"));
                puest.setNombre(rs.getString("nombre"));
                puest.setDescripcion(rs.getString("descripcion"));
                
                lista.add(puest);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            Database.close(con);
        }
        return lista;
    }
    
    
    
  
    
//    
//    public static ArrayList<PuestoBean> getCustomer() {
//        DAO dao = new DAO();
//        try {
//            Connection con = dao.Conectar();
//            PreparedStatement ps = con.prepareStatement("select * from puesto");
//            ArrayList<PuestoBean> al = new ArrayList<PuestoBean>();
//            ResultSet rs = ps.executeQuery();
//            boolean found = false;
//            while (rs.next()) {
//                PuestoBean e = new PuestoBean();
//                e.setId_puesto(rs.getInt("id_puesto"));
//                e.setNombre(rs.getString("nombre"));
//                e.setDescripcion(rs.getString("descripcion"));
//                
//                al.add(e);
//                found = true;
//            }
//            rs.close();
//            if (found) {
//                return al;
//            } else {
//                return null; // no entires found
//            }
//        } catch (Exception e) {
//            System.out.println("Error In getCustomer() -->" + e.getMessage());
//            return (null);
//        }
//    }

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
