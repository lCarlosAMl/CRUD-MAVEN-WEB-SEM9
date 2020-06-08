<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vista alumnos</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
                
    </head>
    <body>
        <div class="container">
            <h1>Registros Profesores</h1>
            <div class="row">
                <p>
                    <a href="<c:url value="add.htm" />" class="btn btn-success">Agregar</a>
                </p>
                <table class="table table-bordered table-striped table-hover">
                    <thread>
                        <tr>
                            <th>Id</th>
                            <th>Nombres</th>
                            <th>Apellidos</th>
                            <th>E-mail</th>
                            <th>Teléfono</th>
                            <th>DNI</th>
                            <th>Acciones</th>
                        </tr>
                    </thread> 
                    
                    <tbody>  
                        <c:forEach items="${datos}" var="dato">
                            <tr>
                                <td><c:out value="${dato.id}"/></td>
                                <td><c:out value="${dato.nombres}"/></td>
                                <td><c:out value="${dato.apellidos}"/></td>
                                <td><c:out value="${dato.correo}"/></td>
                                <td><c:out value="${dato.telefono}"/></td>
                                <td><c:out value="${dato.dni}"/></td>
                                <td>
                                    <a href="<c:url value="edit.htm?id=${dato.id}" />" >Editar</a> |
                                    <a href="<c:url value="delete.htm?id=${dato.id}" />" >Eliminar</a>
                                </td>  
                            </tr>
                        </c:forEach>      
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
