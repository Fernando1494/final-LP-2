<%-- 
    Document   : EditarCurso
    Created on : 15/08/2020, 08:36:53 PM
    Author     : Diana
--%>

<%@page import="Modelo.Curso"%>
<%@page import="ModeloDAO.CursoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Curso</title>
        <link href="../CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <%
                CursoDAO cursoDAO = new CursoDAO();
                int s_idcurso = Integer.valueOf(request.getParameter("f_idcurso"));
                Curso curso = (Curso)cursoDAO.buscarcurso(s_idcurso);
            %>
            <form name="EditarCursoForm" action="Controlador" method="get">
                <table  class="table">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="2">Editar Curso</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-right">Nombre</td>
                            <td><input class="form-control" type="text" name="f_nombre" value="<% out.println(curso.getNombre()); %>" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Horas</td>
                            <td><input class="form-control" type="text" name="f_horas" value="<% out.println(curso.getHoras()); %>" maxlength="40" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Credito</td>
                            <td><input class="form-control" type="text" name="f_credito" value="<% out.println(curso.getCredito()); %>" maxlength="8" size="8" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Estado</td>
                            <td><input class="form-control" type="text" name="f_estado" value="<% out.println(curso.getEstado()); %>" maxlength="12" size="12" /></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center">
                                <input class="btn btn-primary" type="submit" value="Editar Curso" name="editar" />
                                <input type="hidden" value="editarecurso02" name="f_accion"/>
                                <input type="hidden" value="<% out.print(curso.getIdcurso()); %>" name="f_idecurso">

                            </td>
                        </tr>

                    </tbody>
                </table>


            </form>
        </div>
    </body>
</html>
