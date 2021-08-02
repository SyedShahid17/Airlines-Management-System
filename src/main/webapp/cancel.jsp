<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String F_ID=session.getAttribute("F_ID").toString();
String P_ID=session.getAttribute("P_ID").toString();

Connection con;
Statement st;
Class.forName("com.mysql.cj.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/accounts", "root", "@Syedshahid12345");

	
	st=con.createStatement();
	int i=st.executeUpdate("delete from Tickets where Flight_ID='"+F_ID+"' and P_ID='"+P_ID+"'");
	response.sendRedirect("View.jsp");


%>

</body>
</html>