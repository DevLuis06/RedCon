package com.redconexion.bean;

import com.redconexion.dao.PuestoDAO;
import com.redconexion.model.Puesto;
import java.util.List;
import java.util.ArrayList;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

/**
 *
 * @author Red Conexión
 */
@ManagedBean(name="puestob")
@RequestScoped
public class PuestoBean {

    private Puesto puesto = new Puesto();
    private List<Puesto> lstPuesto;
    
    
    
    

      
    
    
    
//    public void registrar() throws Exception {
//        PuestoDAO dao;
//        try {
//            dao = new PuestoDAO();
//            dao.registrar(puesto);
//        } catch (Exception e) {
//            throw e;
//        }
//
//    }

    public void listar() throws Exception {
        PuestoDAO dao;
        try {
            dao = new PuestoDAO();
            lstPuesto = dao.listar();
        } catch (Exception e) {
            throw e;
            
        }

    }

    public Puesto getPuesto() {
        return puesto;
    }

    public void setPuesto(Puesto puesto) {
        this.puesto = puesto;
    }

    public List<Puesto> getLstPuesto() {
        return lstPuesto;
    }

    public void setLstPuesto(List<Puesto> lstPuesto) {
        this.lstPuesto = lstPuesto;
    }

}
