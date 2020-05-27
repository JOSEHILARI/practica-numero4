<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Libro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Libro libro = (Libro)request.getAttribute("libro");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>
            <c:if test="${libro.id == 0}">NUEVA / EDITAR ARTICULO</c:if>
            <c:if test="${libro.id != 0}">NUEVA / EDITAR ARTICULO</c:if>
        </h1>
        <form action="MainController" method="post">
           
                <input type="hidden" name="id" value="${libro.id}">
                <tr>
                    <td>FECHA_CREACION</td>
                    <td><input type="date" name="fecha_creacion" value="${libro.fecha_creacion}"></td>
                </tr>
                <br>
                <br>
                <tr>
                    <td>TITULO</td>
                    <td><input type="text" name="titulo" value="${libro.titulo}"></td>
                </tr>
                <br>
                <br>
                <tr>
                    <td>CONTENIDO</td>
                    <td><textarea name="contenido" value="${libro.contenido}"></textarea></td>
                    <%--<td><input type="text" name="contenido" value="${libro.contenido}"></td>--%>
                </tr>
                <br>
                <br>
                <tr>
                    <td>AUTOR</td>
                    <td><input type="text" name="autor" value="${libro.autor}"></td>
                </tr>
                <br>
                <br>
                <tr>
                    <td></td>
                    <td><input type="submit" value="ENVIAR"></td>
                </tr>
                        <input type="submit" href="index.jsp"value="CANCELAR">
            
        </form>
    </center>
    </body>
</html>
