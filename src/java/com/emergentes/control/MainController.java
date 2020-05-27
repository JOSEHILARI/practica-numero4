package com.emergentes.control;

import com.emergentes.modelo.Libro;
import com.emergentes.utiles.ConexionDB;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "MainController", urlPatterns = {"/MainController"})
public class MainController extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String op ;
        op = (request.getParameter("op") != null) ? request.getParameter("op") : "list";
        
        ArrayList<Libro> lista = new ArrayList<Libro>();
        
        ConexionDB canal = new ConexionDB();        
        Connection conn = canal.conectar();
        
        PreparedStatement ps;        
        ResultSet rs;
        
        if(op.equals("list")){            
            try{
                String sql = "select * from articulo";
                ps = conn.prepareStatement(sql);
                rs = ps.executeQuery();
           
                while(rs.next()){
                    Libro lib = new Libro();
                    lib.setId(rs.getInt("id"));
                    lib.setTitulo(rs.getString("titulo"));
                    lib.setContenido(rs.getString("contenido"));
                    lib.setFecha_creacion(rs.getString("fecha_creacion"));
                    lib.setAutor(rs.getString("autor"));
                    
                    lista.add(lib);
                    
               }
               request.setAttribute("lista", lista);
               request.getRequestDispatcher("index.jsp").forward(request, response);
            }catch(SQLException ex) {
                System.out.println("error en SQL" + ex.getMessage());
            }finally{
                canal.desconectar();
            }
    }
    //nuevo
    if(op.equals("nuevo")){
       Libro l = new Libro();
       request.setAttribute("libro", l);
       request.getRequestDispatcher("editar.jsp").forward(request, response);
    }  
    
    //editar
      if(op.equals("editar")){
            try {
                int id = Integer.parseInt(request.getParameter(("id")));
                String sql = "select * from articulo where id = ?";
                ps = conn.prepareStatement(sql);
                ps.setInt(1, id);
                
                rs = ps.executeQuery();
                
                Libro li = new Libro();
                
                while (rs.next()){
                    li.setId(rs.getInt("id"));
                    li.setTitulo(rs.getString("titulo"));
                    li.setContenido(rs.getString("contenido"));
                    li.setFecha_creacion(rs.getString("fecha_creacion"));
                    li.setAutor(rs.getString("autor"));
                }   
                request.setAttribute("libro", li);
                request.getRequestDispatcher("editar.jsp").forward(request, response);
                
            } catch (SQLException ex) {
                System.out.println("error en sql" + ex.getMessage());
            }
    } 

    //eliminar
    if(op.equals("eliminar")){
            int id = Integer.parseInt(request.getParameter("id"));
            try{
                String sql = "delete from articulo where id = ?";
                ps = conn.prepareStatement(sql);
                ps.setInt(1, id);

                ps.executeUpdate();

            } catch(SQLException ex) {
                System.out.println("Error en sql:" + ex.getMessage());
            } finally {
                canal.desconectar();
            }
            response.sendRedirect("MainController");       
        }
    }
        
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String titulo = request.getParameter("titulo");
        String contenido = request.getParameter("contenido");
        String fecha_creacion = request.getParameter("fecha_creacion");
        String autor = request.getParameter("autor");
            
          Libro l = new Libro();
          l.setId(id);
          l.setTitulo(titulo);
          l.setContenido(contenido);
          l.setFecha_creacion(fecha_creacion);
          l.setAutor(autor);
    
          ConexionDB canal = new ConexionDB ();
          Connection conn = canal.conectar();
          PreparedStatement ps;
          ResultSet rs;
          
          if(id == 0){
              try{
                  String sql = "insert into articulo (titulo,contenido,fecha_creacion,autor) values (?,?,?,?)";
                  ps = conn.prepareStatement(sql);
                  ps.setString(1, l.getTitulo());
                  ps.setString(2, l.getContenido());  
                  ps.setString(3, l.getFecha_creacion());
                  ps.setString(4, l.getAutor());
                  ps.executeUpdate();
          
              } catch (SQLException ex) {
                  System.out.println("Error en SQL:" + ex.getMessage());
              } finally {
                  canal.desconectar();
              }
                response.sendRedirect("MainController");
          }
            else{
            try {
                String sql = "update articulo set titulo=?,contenido=?,fecha_creacion=?,autor=? where id = ?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, l.getTitulo());
                ps.setString(2, l.getContenido());
                ps.setString(3, l.getFecha_creacion());
                ps.setString(4, l.getAutor());
                ps.setInt(5, l.getId());
                ps.executeUpdate();
            } catch (SQLException ex) {
                System.out.println("Error al actualizar"+ex.getMessage());
            }
            response.sendRedirect("MainController");
          }
    }
      
}
