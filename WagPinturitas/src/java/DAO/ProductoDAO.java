/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Interfaz.ProData;
import Model.Productos;
import config.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author carlo
 */
public class ProductoDAO implements ProData{
    
     conexion cn=new conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    @Override
    public List Plista() {
        ArrayList<Productos>list=new ArrayList<>();
        String sql="SELECT * FROM tienda";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Productos pro=new Productos();
                pro.setProductID(rs.getInt("ArticuloID"));
                pro.setNomArt(rs.getString("NombreArt"));
                pro.setPrecio(rs.getDouble("PrecioArt"));
                list.add(pro);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Productos lisa(int ProID) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
