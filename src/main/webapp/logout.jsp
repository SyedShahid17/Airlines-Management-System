<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%

	String user=session.getAttribute("user").toString();
	String pass=session.getAttribute("password").toString();
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/accounts","root","@Syedshahid12345");
	Statement st=con.createStatement();
	int i=st.executeUpdate("delete from login where User_Id='"+user+"'");
	con.close();
	session.removeAttribute("user");
    session.removeAttribute("password");
    session.removeAttribute("From city");
    session.removeAttribute("To city");
    session.removeAttribute("P_ID");
    session.removeAttribute("F_ID");
    session.removeAttribute("Passenger Name");
    session.removeAttribute("Fare");
    session.invalidate();
    response.sendRedirect("login.jsp");
        %>