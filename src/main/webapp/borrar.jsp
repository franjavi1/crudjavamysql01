
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            Connection con = null;
            Statement st = null;
            
                   try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost/conferencia?user=root&password=");
                                    st = con.createStatement();
                                    st.executeUpdate("delete FROM expositores where id='"+request.getParameter("id")+"';");
                                    request.getRequestDispatcher("index.jsp").forward(request, response);
                     }       catch (Exception e) {
                            out.print(e);
             
             }
           
        %>
        <h1>Hello World!</h1>
    </body>
</html>
