<%-- 
    Document   : index
    Created on : 6 jul. 2023, 17:17:04
    Author     : franc
--%>



<%@page import="java.sql.*"%>

<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css" integrity="sha384-b6lVK+yci+bfDmaY1u0zE8YYJt0TZxLEAFyYSLHId4xoVvsrQu3INevFKo+Xir8e" crossorigin="anonymous">
        
        <title>CRONOGRAMA CONFERENCIA</title>
    </head>
    <body>
        <%
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
        %>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm" method="post">

                </div>
            </div>

            <table class="table table-striped">

                <thead>
                     <tr>
                        <th scope="col" colspan="2" >EXPOSITORES</th>
                        <th scope="col" colspan="1" ><i class="bi bi-robot" style="font-size: 1.8rem; color: green;" ></i></th>
                           <th scope="col" colspan="1" ><i class="bi bi-rocket-takeoff" style="font-size: 1.8rem; color: red;"></i></i></th>
                             <th scope="col" colspan="1" ><i class="bi bi-database" style="font-size: 1.8rem; color: blue;"></i></i></th>
                        <th scope="col">
                           
                             <a href="crear.jsp"><i class="bi bi-person-fill-add " style="font-size: 1.8rem; color: cornflowerblue;" ></i></a>
                         </th>
                        
                    </tr>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">DIA_CONFERENCIA</th>
                        <th scope="col">HORA_CONFERENCIA</th>
                        <th scope="col">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                         <%
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost/conferencia?user=root&password=");
                                    st = con.createStatement();
                                    rs = st.executeQuery("SELECT * FROM `expositores`;");
                                    while (rs.next()) {
                            %>
                           
                                <th scope="row"><%= rs.getString(1)%></th>
                                <td><%= rs.getString(2)%></td>
                                <td><%= rs.getString(3)%></td>
                                <td><%= rs.getString(4)%></td>
                                 <td><%= rs.getString(5)%></td>
                                 <td>
                                     <a href="editar.jsp?id=<%= rs.getString(1)%>&nombre=<%= rs.getString(2)%>&apellido=<%= rs.getString(3)%>&dia=<%= rs.getString(4)%>&hora=<%= rs.getString(5)%>"><i class="bi bi-pencil-fill"></i></a>)
                                     <a href="borrar.jsp?id=<%= rs.getString(1)%>"><i class="bi bi-trash-fill"></i></a>
                                 </td>
                            </tr>                                    
                            <%
                                    }
                                } 
                                catch (Exception e) {
                                    out.print("error mysql "+e);
                                }
                            %>
                        </tbody>

                </tbody>

            </table>
        </div>
    </body>
</html>
