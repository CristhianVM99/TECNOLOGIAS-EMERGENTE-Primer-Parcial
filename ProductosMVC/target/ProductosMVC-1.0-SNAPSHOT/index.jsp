<%-- 
    Document   : index
    Created on : 29-mar-2022, 20:50:39
    Author     : USUARIO
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    ArrayList<Producto> Productos = (ArrayList<Producto>) session.getAttribute("listaprod");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Almacen | Cristhian Villca Mamani</title>
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>
    <body>
        <div class="container">
            <div class="titulo">
                <h3>PRIMER PARCIAL TEM-742</h3>
                <p>
                    Nombre: Cristhian Villca Mamani<br>
                    Carnet: 13185166 L.P.
                </p>
            </div>
        <h1>Productos</h1>
        <button><a href="MainServlet?op=nuevo">Ingresar Nuevo Producto -></a></button>
        <table class="tb">
            <tr>
                <th>ID</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <%
                if(Productos !=null)
                {
                    for(Producto item: Productos)
                    {
            %>
            <tr>
                <td><%=item.getId()%></td>
                <td><%=item.getDescripcion()%></td>
                <td><%=item.getCantidad()%></td>
                <td><%=item.getPrecio()%></td>
                <td><%=item.getCategoria()%></td>
                <td><button><a href="MainServlet?op=editar&id=<%=item.getId()%>">Modificar</a></button></td>
                <td><button><a href="MainServlet?op=eliminar&id=<%=item.getId()%>" onclick='return confirm("Esta Seguro de Eliminar el Producto ? ");'>Eliminar</a></button></td>
            </tr>
            <%
                    }
                }      
            %>   
        </table>
        </div>
    </body>
</html>
