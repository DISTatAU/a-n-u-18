<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href="style/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link type="text/css" rel="stylesheet" href="style/dict.css" />
	
	<script src="script/jquery-1.12.3.min.js" type="text/javascript"></script>
	<script src="script/bootstrap.min.js" type="text/javascript"></script>
	<script src="script/dict.js" type="text/javascript"></script>

</head>
<body>
	<nav>
		<h1>Emoji search!</h1>
		<a style="float: right;" href="index.html">
			<span style="font-size: 36px;" class="glyphicon glyphicon-home"></span>
		</a>
	</nav>
	<% String unicode = request.getParameter("unicode"); %>

	<h2>
		<% if(unicode != null)
		out.print("<b>RESULTS </b>"); %>
	</h2>	
	<h3>
		<% if(unicode != null)
		out.print("<b>Unicode : </b>"+unicode); %>
	</h3>
	<h3>
		<%  if(unicode != null)
		out.println("<b>Emoji : </b>"+"&#"+unicode);%>
	</h3>
	<%
	if(unicode != null)
	{
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dictionary", "root", "");
		stmt = conn.createStatement();
		String sql = "SELECT * FROM emojis where unicode = '"+unicode+"'";
		rs = stmt.executeQuery(sql);
		while(rs.next())
		{
                        String short_name = rs.getString("short_name");
			String description = rs.getString("description"); %>
                        <h3><% out.print("<b>Short name : </b>"+short_name); %></h3>
			<h3><% out.print("<b>Description : </b>"+description); %></h3>
			<%
		}
	}
	%>
	<h3>
		<%  if(unicode != null)
		out.println("Conitinue searching : ");%>
	</h3>	
	<form action="emoji.jsp" method="POST">
		<label>Enter the unicode of emoji to lookup :</label>
		<input type="text" name="unicode"/>
		<input type="submit" value="submit"/>
	</form>
	<h3>List of emojis used in social media with their unicode:</h3>
	<h4>SMILEY AND PEOPLE:</h4>
		<table align="center">
			<%
			int i,j;
			for(i=128512;i<=128563;)
			{		
				out.print("<tr>");
					for(j=0;j<5;j++)
					{

						out.print("<td style='font-size:40px' name='i'>"+"&#"+i+";"+i+"</td>");
						i++;
					}
				out.print("</tr>");
			}
			for(i=128100;i<=128141;)
			{		
				out.print("<tr>");
					for(j=0;j<5;j++)
					{

						out.print("<td style='font-size:40px' name='i'>"+"&#"+i+";"+i+"</td>");
						i++;
					}
				out.print("</tr>");
			}
			%>
		</table>
	<h4>ANIMAL AND NATURE:</h4>
		<table align="center">
			<%
			
			for(i=128000;i<=128059;)
			{		
				out.print("<tr>");
					for(j=0;j<5;j++)
					{

						out.print("<td style='font-size:40px' name='i'>"+"&#"+i+";"+i+"</td>");
						i++;
					}
				out.print("</tr>");
			}
			%>
		</table>
	<h4>FOOD AND DRINK: </h4>
		<table align="center">
			<%
			
			for(i=127789;i<=127870;)
			{		
				out.print("<tr>");
					for(j=0;j<5;j++)
					{

						out.print("<td style='font-size:40px' name='i'>"+"&#"+i+";"+i+"</td>");
						i++;
					}
				out.print("</tr>");
			}
			%>
		</table>
	<h4>TRANSPORT AND SIGNS: </h4>
		<table align="center">
			<%
			
			for(i=128640;i<=128718;)
			{		
				out.print("<tr>");
					for(j=0;j<5;j++)
					{

						out.print("<td style='font-size:40px' name='i'>"+"&#"+i+";"+i+"</td>");
						i++;
					}
				out.print("</tr>");
			}
			%>
		</table>
	
	</body>
	</html>
