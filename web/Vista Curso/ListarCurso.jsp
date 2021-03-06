<%-- 
    Document   : ListarCurso
    Created on : 15/08/2020, 08:37:14 PM
    Author     : Diana
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Curso"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.CursoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Curso</title>
        <link href="../CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <h1>Listado de Cursos</h1>
            <a class="btn btn-success" onclick="cargarVista('AgregarCurso.jsp')">Agregar Nuevo Curso</a>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Horas</th>
                        <th class="text-center">Credito</th>               
                        <th class="text-center">Estado</th>
                    </tr>
                </thead>
                <tbody>

                    <%
                        CursoDAO cursoDAO = new CursoDAO();
                        List<Curso> cursos = cursoDAO.listarcurso();
                        Iterator<Curso> iterator = cursos.iterator();
                        Curso curso = null;
                        while (iterator.hasNext()) {
                            curso = iterator.next();


                    %>
                    <tr>
                        <td><% out.print(curso.getIdcurso()); %></td>
                        <td><% out.print(curso.getNombre()); %></td>
                        <td><% out.print(curso.getHoras()); %></td>
                        <td><% out.print(curso.getCredito()); %></td>
                        <td><% out.print(curso.getEstado()); %></td>
                        <td>
                            <a class="btn btn-warning" href="Controlador?f_accion=editarcurso01&f_idcurso=<% out.print(curso.getIdcurso()); %>">
                                Editar
                            </a>
                            <a class="btn btn-danger" href="Controlador?f_accion=eliminarcurso&f_idcurso=<% out.print(curso.getIdcurso()); %>">
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