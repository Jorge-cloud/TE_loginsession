<%-- 
    Document   : login
    Created on : 23-mar-2021, 21:14:50
    Author     : Jorge
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login con Servlet Seesion</h1>
        <%
            String msg = (String) session.getAttribute("error");
            if(msg != null){
  
        %>
        <p style="color: red"><%= msg%></p>
        <%
            session.invalidate();
            }
        %>
        <form action="LoginSession" method="post">
            <table>
                <tr>
                    <td>Usuario:</td>
                    <td><input type="text" name="usuario"/></td>
                </tr>
                <tr>
                    <td>Clave:</td>
                    <td><input type="password" name="password"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Ingresar"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
