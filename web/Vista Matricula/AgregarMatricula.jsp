<%-- 
    Document   : AgregarMatricula
    Created on : 15/08/2020, 08:31:57 PM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AgregarMatricula</title>
        <link href="../CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <form name="AgregarMatriculaForm" action="Controlador" method="get">
                <table  class="table">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="2">Agregar Matricula</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-right">Semestre</td>
                            <td><input class="form-control" type="text" name="f_semestre" value="" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Ciclo</td>
                            <td><input class="form-control" type="text" name="f_ciclo" value="" maxlength="1" size="5" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Estado</td>
                            <td><input class="form-control" type="text" name="f_estado" value="" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">idcurso</td>
                            <td><input class="form-control" type="text" name="f_idcurso" value="" maxlength="12" size="12" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">idestudiante</td>
                            <td><input class="form-control" type="text" name="f_idestudiante" value="" maxlength="10" size="10" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">idcarrera</td>
                            <td><input class="form-control" type="text" name="f_idcarrera" value="" maxlength="10" size="10" /></td>
                        </tr>
                            <td colspan="2" class="text-center">
                                <input class="btn-primary" type="submit" value="Agregar Matricula" name="agregar" />
                                <input type="hidden" value="agregarmatricula02" name="f_accion"/>
                                    
                            </td>
                        </tr>
                        
                    </tbody>
                </table>
                
            </form>
        </div>
    </body>
</html>
