/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import rutina.Rutina;

/**
 *
 * @author ASUS
 */
public class DBRutinas {
    /*
    *nombre, 
    *descripcion, 
    *repeticiones, 
    *peso,
    *img
    */
    DBConexion cn;
    
    public DBRutinas() {
        cn = new DBConexion();
    }

    public ResultSet getRutinaById(int id) throws SQLException {
        PreparedStatement pstm = cn.getConexion().prepareStatement("SELECT rut_id, "
                + " rut_nombre, "
                + " rut_descripcion, "
                + " rut_repeticiones, "
                + " rut_peso,"
                + " FROM rutinas "
                + " WHERE rut_id = ? ");
        pstm.setInt(1, id);

        ResultSet res = pstm.executeQuery();
        /*
         res.close();	
         */

        return res;
    }

    /**
     * trae todos los registros de la tabla contactos
     */
    public ResultSet getRutinas() throws SQLException {
        PreparedStatement pstm = cn.getConexion().prepareStatement("SELECT rut_id, "
                + " rut_nombre, "
                + " rut_descripcion, "
                + " rut_repeticiones, "
                + " rut_peso "
                + " FROM rutinas ");


        ResultSet res = pstm.executeQuery();
        return res;
    }

    public void insertarRutina(Rutina r) {
        try {
            PreparedStatement pstm = cn.getConexion().prepareStatement("insert into rutinas (rut_nombre, "
                    + " rut_descripcion, "
                    + " rut_repeticiones, "
                    + " rut_peso,"
                    + " FROM rutinas "
                    + " values(?,?,?,?)");
            pstm.setString(1, r.getNombre());
            pstm.setString(2, r.getDescripcion());
            pstm.setString(3, r.getRepeticiones());
            pstm.setString(4, r.getRepeticiones());
            pstm.setString(5, r.getPeso());

            pstm.executeUpdate();


        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public void actualizarRutina(Rutina r) {

        try {
            PreparedStatement pstm = cn.getConexion().prepareStatement("update rutinas set rut_nombre = ?, "
                    + " rut_descripcion = ?, "
                    + " rut_repeticiones = ?, "
                    + " rut_peso = ? "
                    + " where rut_id = ?");
            pstm.setString(1, r.getNombre());
            pstm.setString(2, r.getDescripcion());
            pstm.setString(3, r.getRepeticiones());
            pstm.setString(4, r.getPeso());
            pstm.setInt(5, r.getId());

            pstm.executeUpdate();


        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public void borrarRutina(Rutina r) {

        try {
            PreparedStatement pstm = cn.getConexion().prepareStatement("delete from rutinas "
                    + " where rut_id = ?");

            pstm.setInt(1, r.getId());

            pstm.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }


    }

    public String getMensaje() {
        return cn.getMensaje();
    }
}
