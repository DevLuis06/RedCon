package com.redconexion.dao;

import com.mysql.jdbc.Driver;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Red Conexión
 */
public class DAO {

    private Connection con;

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public Connection Conectar() throws Exception {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/redconexion",
                    "root", "123456789");
            return con;
        } catch (Exception e) {
            throw e;
        }
    }

    public void cerrar() throws SQLException {
        try {
            if (con != null) {
                if (con.isClosed() == false) {
                    con.close();
                }
            }
        } catch (Exception e) {
            throw e;
        }

    }
}
