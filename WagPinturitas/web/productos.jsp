
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Iterator"%>
<%@page import="Model.Productos"%>
<%@page import="java.util.List"%>
<%@page import="DAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pinturitas</title>
        <style><%@include file="/css/Esilos.css"%></style>
    </head>


    <body bgcolor="#131315" text="black">

    <tr>
        <td> <img src="img/logo.jpg" width="160" height="180"></a></td>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <td> <a href="index.jsp"><img src="img/menuini.jpg" height="40"></a></td>
    &nbsp; &nbsp;
    <td> <a href="nosotros.sjp"><img src="img/menucono.jpg" width="300" height="40"></a></td>
    &nbsp; &nbsp;
    <td> <a href="productos.jsp"><img src="img/menuprodu.jpg" width="300" height="40"></a></td>
    &nbsp; &nbsp;
    <td> <a href="contacto.jsp"><img src="img/menuconta.jpg" width="300" height="40"></a></td>
</tr>


<div class="login-bocs">
    <h2>Productos</h2>
    <table border="1">
        <thead>
            <tr>
                <th>ID de Producto</th>
                <th>Producto</th>
                <th>Precio</th>
                <th>Cantidad</th>
                <th>Total:</th>
            </tr>
        </thead>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/wags_pinturitas";
                String username = "root";
                String password = "";
                String query = "select * from tienda";
                Connection conn = DriverManager.getConnection(url, username, password);
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query);
                while (rs.next()) {
        %>
        <tbody>
            <tr>
                <td><%= rs.getInt("AriculoID")%></td>
                <td><%= rs.getString("NombreArt")%></td>
                <td><%= rs.getDouble("PrecioArt")%></td>
                <td><select name="Producto" id="CantPro">
                        <option value="">--Porfavor seleccione una cantida-</option>
                        <option value="num">1</option>
                        <option value="num">2</option>
                        <option value="num">3</option>
                        <option value="num">4</option>
                        <option value="num">5</option>
                        <option value="num">6</option>
                        <option value="num">7</option>
                        <option value="num">8</option>
                        <option value="num">9</option>
                        <option value="num">10</option>
                    </select></td>
                <td>
                    
                </td>
            </tr>
            <%}%>
        </tbody>
    </table>
    <%
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }


    %>

</div>
</body>