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
            String id=request.getParameter("id");
            String word=request.getParameter("word");
            String lang=request.getParameter("language");
            String desc=request.getParameter("description");
            PreparedStatement ps=con.prepareStatement("insert into entries values(?,?,?,?)");
            ps.setString(1,id);
            ps.setString(2,word);
            ps.setString(3,lang);
            ps.setString(4,desc);
            int i=ps.executeUpdate();
            out.print("<a href='admin.html'>back to admin</a>");
            %>
</body>
</html>
