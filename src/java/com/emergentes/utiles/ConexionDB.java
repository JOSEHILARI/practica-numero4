
package com.emergentes.utiles;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class ConexionDB {
    //static String driver = "com.mysql.jdbc.Driver";
    static String url = "jdbc:mysql://localhost:3306/bd_agenda";
    static String usuario = "root";
    static String password = "";
    
    public Connection conn = null ;
    
    public ConexionDB(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, usuario, password);
            if (conn != null){
                System.out.println("Conexion OK" + conn);
            }
         
        } catch (SQLException ex){
            System.out.println("Error al abrir la BD"+ex.getMessage());
        } catch (ClassNotFoundException ex){
            System.out.println("falta especificar driver "+ex.getMessage());    
        }   
    }
    
    public Connection conectar()
    {
        return conn;
    }
    
    public void desconectar()
    {  
        System.out.println("cerrando la BD" + conn );
        try {            
            conn.close();
        } catch (SQLException ex) {
            System.out.println("Error al cerrar la BD" + ex.getMessage());
        }
    }
    
}
