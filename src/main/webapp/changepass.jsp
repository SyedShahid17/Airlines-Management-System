<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<table>
<%
String user=request.getParameter("user") ;
String Pass=request.getParameter("newpass");

try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/accounts", "root", "@Syedshahid12345");
    Statement st=con.createStatement();
    int i=st.executeUpdate("UPDATE Registered_accounts SET Password='"+Pass+"' WHERE User_Id='"+user+"' ");
    
}
catch(Exception e){
    out.println(e);
    }finally{
    	out.println("<script type=\"text/javascript\">");
        out.println("alert('Password Changed Successfully!! ');");
        out.println("location='login.jsp';");
        out.println("</script>");
    }
%>
</table>
</body>
</html>