<%-- 
    Document   : EditarCarrera
    Created on : 15/08/2020, 08:45:10 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Estudiante</title>
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <%
                CarreraDAO estudianteDAO = new CarreraDAO();
                int s_idestudiante = Integer.valueOf(request.getParameter("f_idcarrera"));
                Carrera estudiante = (Carrera)carreraDAO.buscarcarrera(s_idcarrera);
            %>
            <form name="EditarCarreraForm" action="Controlador" method="get">
                <table  class="table">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="2">Editar Carrera</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-right">Nombre </td>
                            <td><input class="form-control" type="text" name="f_nombre" value="<% out.println(estudiante.getNombre()); %>" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Estado</td>
                            <td><input class="form-control" type="text" name="f_estado" value="<% out.println(estudiante.getEstado()); %>" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center">
                                <input class="btn btn-primary" type="submit" value="Editar Carrera" name="editar" />
                                <input type="hidden" value="editarcarrera" name="f_accion"/>
                                <input type="hidden" value="<% out.print(estudiante.getIdestudiante()); %>" name="f_idcarrera">

                            </td>
                        </tr>

                    </tbody>
                </table>


            </form>
        </div>
    </body>
</html>
