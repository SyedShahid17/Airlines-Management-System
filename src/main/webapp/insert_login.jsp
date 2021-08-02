<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<% 
    String user=session.getAttribute("user").toString();
    String pass=session.getAttribute("password").toString();
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/accounts","root","@Syedshahid12345");
	Statement st=con.createStatement();
	int i=st.executeUpdate("insert into login(User_Id,Password) values('"+user+"','"+pass+"')");
	con.close();
	response.sendRedirect("home.jsp");
	
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>