<%-- 
    Document   : edit.jsp
    Created on : 04-jun-2020, 11:29:35
    Author     : Galileo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
    <body>
        <div class="container mt-4 col-lg-4" >
            <div>
                <h1>Editar registro de Profesores</h1>
            </div>
        
            <form method="POST">
                <table class="table table-bordered table-striped table-hover">
                    <tr>
                        <td>Nombres</td>
                        <td>
                            <input type="text" name="nombres" class="form-control" value="${datos[0].nombres}">
                        </td>
                    </tr>
                    <tr>
                        <td>Apellidos</td>
                        <td>
                            <input type="text" name="apellidos" class="form-control" value="${datos[0].apellidos}">
                        </td>
                    </tr>
                    <tr>
                        <td>Correo</td>
                        <td>
                            <input type="text" name="correo" class="form-control" value="${datos[0].correo}">
                        </td>
                    </tr>
                    <tr>
                        <td>Teléfono</td>
                        <td>
                            <input type="text" name="telefono" class="form-control" value="${datos[0].telefono}">
                        </td>
                    </tr>
                    <tr>
                        <td>DNI</td>
                        <td>
                            <input type="text" name="dni" class="form-control" value="${datos[0].dni}">
                        </td>
                    </tr>
                        <td colspan="2" align="center">
                            <input type="submit" value="Editar"> |
                            <a href="home.htm">Regresar</a>
                        </td>
                    <tr>
            </table>
        </form>
        </div>
    </body>
</html>
