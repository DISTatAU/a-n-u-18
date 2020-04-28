<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
        <%
            String x=request.getParameter("Username");
            String y=request.getParameter("Password");
			String w="admin";
			String z="Admin123";
			if(x.equals(w) && y.equals(z))
			{
                         out.print("enter correct username and password");
			 response.sendRedirect("admin.html");
			}
			else
			{
			 response.sendRedirect("index.html");
			}
            
            
          

         %>
    </body>
</html>
