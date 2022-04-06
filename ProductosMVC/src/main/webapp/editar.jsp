<%-- 
    Document   : editar
    Created on : 29-mar-2022, 20:57:37
    Author     : USUARIO
--%>

<%@page import="com.emergentes.modelo.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Producto item = (Producto) request.getAttribute("miProducto");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar | Ingresar</title>
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>
    <body>
        <h1><%= (item.getId()== 0)?"Nuevo Producto":"Editar Producto"%></h1>
        <form action="MainServlet" method="POST">
            <input type="hidden" name="id" value="<%=item.getId()%>">
            <table class="tb">
                <tr>
                    <td class="td-titulo">Descripcion</td>
                    <td><input type="text" name="descripcion" value="<%=item.getDescripcion()%>"></td>
                </tr>
                <tr>
                    <td class="td-titulo">Cantidad</td>
                    <td><input type="text" name="cantidad" value="<%=item.getCantidad()%>"></td>
                </tr>
                <tr>
                    <td class="td-titulo">Precio</td>
                    <td><input type="text" name="precio" value="<%=item.getPrecio()%>"></td>
                </tr>
                <tr>
                    <td class="td-titulo">Categoria</td>
                    <td><input type="text" name="categoria" value="<%=item.getCategoria()%>"></td>
                </tr>  
            </table>
                <input type="submit" value="Registrar Producto"><br>          
        </form>
        <button><a href="index.jsp"><- Regresar a la Pagina Princiapal</a></button>
    </body>
</html>
