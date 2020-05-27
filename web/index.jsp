<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Libro"%>

<%
    List<Libro> lista = (List<Libro>) request.getAttribute("lista");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p style="text-align: right;">         
            <td><a href="LoginControlador?action=logout"> [->] Salir </a></td>
        </p>
        <center><h1>BLOG DE SALUD</h1></center>
        <p>
            <a href="MainController?op=nuevo">NUEVO ARTICULO</a>
        </p>
            <c:forEach var="item" items="${lista}"> 
                <br>
                <td>${item.fecha_creacion}</td>
                <br>
                <h2><td>${item.titulo}</td></h2>
                <h3><td>${item.contenido}</td></h3>
                <br>
                <h4>Autor : <td>${item.autor}</td></h4>
                <p style="text-align: right;">
                <td><a href="MainController?op=editar&id=${item.id}">EDITAR</a></td>
                <td><a href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm('ESTA SEGUR@ DE ELIMINAR'))" >ELIMINAR</a></td>       
                </p>
                <hr color='blue' size='4'>
            </c:forEach>            
       
    </body>
</html>
