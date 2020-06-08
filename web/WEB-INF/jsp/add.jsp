
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
    <body>

        <div class="container mt-4 col-lg-4" >
            <div>
                <h1>Agregar registro de Profesores</h1>
            </div>
            <div>
                <form method="POST">
                    <table class="table table-bordered table-striped table-hover">
                        <tr>
                            <td>Nombres</td>
                            <td>
                                <input type="text" name="nombres" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <td>Apellidos</td>
                            <td>
                                <input type="text" name="apellidos" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <td>Correo</td>
                            <td>
                                <input type="text" name="correo" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <td>Teléfono</td>
                            <td>
                                <input type="text" name="telefono" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <td>DNI</td>
                            <td>
                                <input type="text" name="dni" class="form-control">
                            </td>
                        </tr>
                            <td colspan="2" align="center">
                                <input type="submit" value="Agregar"> |
                                <a href="home.htm">Regresar</a>
                            </td>
                        <tr>
                    </table>
                </form>
            </div>
        </div>

    </body>
</html>
