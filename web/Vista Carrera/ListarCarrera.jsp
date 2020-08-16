<%-- 
    Document   : ListarCarrera
    Created on : 15/08/2020, 08:45:45 PM
    Author     : hp
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Carrera"%>
<%@page import="ModeloDAO.CarreraDAO"%>
<%@page import="ModeloDAO.CarreraDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Carreras</title>
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <h1>Listado de Carreras</h1>
            <a class="btn btn-success" href="Controlador?f_accion=agregarcarrera01">Agregar Nueva Carrera</a>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Estado</th>
                        </tr>
                </thead>
                <tbody>

                    <%
                        CarreraDAO carreraDAO = new CarreraDAO();
                        List<Carrera> carreras = carreraDAO.listarcarrera();
                        Iterator<Carrera> iterator = carreras.iterator();
                        Carrera carrera = null;
                        while (iterator.hasNext()) {
                            carrera = iterator.next();


                    %>
                    <tr>
                        <td><% out.print(carrera.getIdcarrera()); %></td>
                        <td><% out.print(carrera.getNombre()); %></td>
                        <td><% out.print(carrera.getEstado()); %></td>
                        <td>
                            <a class="btn btn-warning" href="Controlador?f_accion=editarestudiante01&f_idestudiante=<% out.print(carrera.getIdcarrera()); %>">
                                Editar
                            </a>
                            <a class="btn btn-danger" href="Controlador?f_accion=eliminarestudiante&f_idestudiante=<% out.print(carrera.getIdcarrera()); %>">
                                Eliminar
                            </a>
                        </td>
                    </tr>
                    <%    }
                    %>                    
                </tbody>
            </table>
        </div>
    </body>
</html>

