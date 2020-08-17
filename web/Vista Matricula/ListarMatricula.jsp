--<%-- 
    Document   : ListarEstudiante
    Created on : 10/08/2020, 09:13:41 AM
    Author     : TuNombre
--%>
 
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Matricula"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.MatriculaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Matricula</title>
        <link href="../CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <h1>Listado de Matriculas</h1>
            <a class="btn btn-primary" onclick="cargarVista('AgregarMatricula.jsp')">Agregar Nueva Matricula</a>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Semestre</th>
                        <th class="text-center">Ciclo</th>
                        <th class="text-center">Estado</th>
                        <th class="text-center">IdCurso</th>
                        <th class="text-center">IdEstudiante</th>
                        <th class="text-center">Idcarrera</th>
                    </tr>
                </thead>
                <tbody>

                    <%
                        MatriculaDAO matriculaDAO = new MatriculaDAO();
                        List<Matricula> estudiantes = matriculaDAO.listarmatricula();
                        Iterator<Matricula> iterator = estudiantes.iterator();
                        Matricula matricula = null;
                        while (iterator.hasNext()) {
                            matricula = iterator.next();


                    %>
                    <tr>
                        <td><% out.print(matricula.getIdestudiante()); %></td>
                        <td><% out.print(matricula.getSemestre()); %></td>
                        <td><% out.print(matricula.getCiclo()); %></td>
                        <td><% out.print(matricula.getEstado()); %></td>
                        <td><% out.print(matricula.getIdcurso()); %></td>
                        <td><% out.print(matricula.getIdestudiante()); %></td>
                        <td><% out.print(matricula.getIdcarrera()); %></td>
                        <td>
                            <a class="btn btn-warning" href="Controlador?f_accion=editarestudiante01&f_idestudiante=<% out.print(matricula.getIdmatricula()); %>">
                                Editar
                            </a>
                            <a class="btn btn-danger" href="Controlador?f_accion=eliminarestudiante&f_idestudiante=<% out.print(matricula.getIdmatricula()); %>">
                                Eliminar
                            </a>
                        </td>
                    </tr>
                    <%    }
                    %>                    
                </tbody>
            </table>
        </div>
        <script>
            function cargarVista(url){
                window.location.href=url;
            }
        </script>
    </body>
</html>
