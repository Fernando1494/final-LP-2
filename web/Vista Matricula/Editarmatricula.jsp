
<%@page import="Modelo.Matricula"%>
<%@page import="ModeloDAO.MatriculaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Matricula</title>
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <%
               MatriculaDAO matriculaDAO = new MatriculaDAO();
                int s_idmatricula = Integer.valueOf(request.getParameter("f_idestudiante"));
                Matricula estudiante = (Matricula)MatriculaDAO.buscarmatricula(s_idmatricula);  
            %>
            <form name="EditarMatriculaForm" action="Controlador" method="get">
                <table  class="table">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="2">Editar Matricula</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-right">Semestre</td>
                            <td><input class="form-control" type="text" name="f_semestre" value="<% out.println(estudiante.getSemestre()); %>" maxlength="6" size="6" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">ciclo</td>
                            <td><input class="form-control" type="text" name="f_ciclo" value="<% out.println(estudiante.getCiclo()); %>" maxlength="5" size="5" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Estado</td>
                            <td><input class="form-control" type="text" name="f_estado" value="<% out.println(estudiante.getEstado()); %>" maxlength="1" size="1" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Idcurso</td>
                            <td><input class="form-control" type="text" name="f_idcurso" value="<% out.println(estudiante.getIdcurso()); %>" maxlength="12" size="12" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Idestudiante</td>
                            <td><input class="form-control" type="text" name="f_idestudiante" value="<% out.println(estudiante.getIdestudiante()); %>" maxlength="12" size="12" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Idcarrera</td>
                            <td><input class="form-control" type="text" name="f_idcarrera" value="<% out.println(estudiante.getIdcarrera()); %>" maxlength="12" size="12" /></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center">
                                <input class="btn btn-primary" type="submit" value="Editar Matricula" name="editar" />
                                <input type="hidden" value="editarmatricula02" name="f_accion"/>
                                <input type="hidden" value="<% out.print(matricula.getIdmatricula()); %>" name="f_idmatricula">

                            </td>
                        </tr>

                    </tbody>
                </table>


            </form>
        </div>
    </body>
</html>
