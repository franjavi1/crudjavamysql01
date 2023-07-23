
<%@page import="java.sql.*"%>

<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css" integrity="sha384-b6lVK+yci+bfDmaY1u0zE8YYJt0TZxLEAFyYSLHId4xoVvsrQu3INevFKo+Xir8e" crossorigin="anonymous">
        <title>Editar expositores<</title>
    </head>
    <body>
        <% 
                String id = request.getParameter("id");
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                String dia = request.getParameter("dia");
                String hora = request.getParameter("hora");
        
        %>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <form action="editar.jsp" method="post">
                        <div class="form-group">
                            <label for="nombre">Nombre</label>
                            <input type="text" class="form-control" id="nombre" value="<%=nombre%>" name="nombre" placeholder="Enter nombre">                          
                        </div>

                        <br>
                        <div class="form-group">
                            <label for="apellido">Apellido</label>
                            <input type="text" class="form-control" id="apellido" value="<%=apellido%>" name="apellido" placeholder="Entre apellido">                          
                        </div>
                        <br>
                        <div class="form-group">
                            <label for="dia">Día de la conferencia</label>
                            <input type="text" class="form-control" id="dia" value="<%=dia%>" name="dia" placeholder="Entre dia de la conferencia">                          
                        </div>
                        <div class="form-group">
                            <br>
                            <label for="hora">Hora de la conferencia</label>
                            <input type="text" class="form-control" id="hora" value="<%=hora%>" name="hora" placeholder="Entre hora de la conferencia">                          
                        </div>
                        <br>
                        <br>
                        <a href="index.jsp" class="btn btn-danger">Cancelar&nbsp&nbsp<i class="bi bi-skip-backward-circle-fill"></i></a>
                        <button type="submit" name="enviar" class="btn btn-primary">Guardar&nbsp&nbsp<i class="bi bi-save2"></i></button>
                        <input type="hidden" name="id" value="<%= id%>" >
                       
                    </form>
                </div>
            </div>
        </div>
      <%
            if (request.getParameter("enviar") != null) {
                
               
                try {
                    Connection con=null;
                    Statement st=null;
                    
                    Class.forName("com.mysql.jdbc.Driver");                
                    con = DriverManager.getConnection("jdbc:mysql://localhost/conferencia?user=root&password=");
                    st=con.createStatement();
                    st.executeUpdate("update expositores set nombre ='" +nombre+ "',apellido ='" + apellido +"',DIA_CONFERENCIA ='" + dia +"',HORA_CONFERENCIA ='" +hora+"' where id='"+id+"';");
                    //request.getRequestDispatcher("index.jsp").forward(request, response);
                } catch (Exception e) {
                    out.print(e);
                }
            }
        %>
    </body>
</html>
