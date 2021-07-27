<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%
    try{
    	String user=request.getParameter("name");
    	String email=request.getParameter("email");
    	String message=request.getParameter("message");
    	Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/accounts", "root", "@Syedshahid12345");
        Statement st=con.createStatement();
    	int i=st.executeUpdate("insert into contactForm(User_Id,Email,message) values('"+user+"','"+email+"','"+message+"')");
    }catch(Exception e){
	    	out.println(e);
    }finally{
	    	out.println("<script type=\"text/javascript\">");
	        out.println("alert('Submitted Successfully!! ');");
	        out.println("location='contactpage.jsp';");
	        out.println("</script>");
    }
	  %>

</body>
</html>