<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><center>LOGIN</center></h1>
        <form action = "LoginControlador" method="post">
            <center>
                <label>USUARIO</label>
                <input type ="text" name="usuario">
            </center>
            <br>
            <center>
                <label>CLAVE</label>
                <input type ="password" name="password">
            </center>
            <br>
            <center><input type="submit" value="INGRESAR"></center>
           
        </form>
    </body>
</html>
