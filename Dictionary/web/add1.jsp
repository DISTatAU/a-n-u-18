<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 	<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dictionary", "root", ""); 
            String unicode=request.getParameter("unicode");
            String short_name=request.getParameter("short_name");
            String desc=request.getParameter("description");
            PreparedStatement ps=con.prepareStatement("insert into emojis values(?,?,?)");
            ps.setString(1,unicode);
            ps.setString(2,short_name);
            ps.setString(3,desc);
            int i=ps.executeUpdate();
            out.print("<a href='admin.html'>back to admin</a>");
            %>
</body>
</html>
