<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body align="center" bgcolor="olive">
<h2>Accounts Details Submitted Successfully!!</h2>
<%@page import="java.sql.*,java.util.*"%>
<table align="center">
<%
String UserName=request.getParameter("username");
String FName=request.getParameter("fname");
String LName=request.getParameter("lname");
String Email=request.getParameter("email");
String MobileNo=request.getParameter("mobilenum");
String Password=request.getParameter("password");

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/accounts", "root", "@Syedshahid12345");
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into Registered_accounts(User_Id,Password,FirstName,LastName,ContactNo,Email) values('"+UserName+"','"+Password+"','"+FName+"','"+LName+"','"+MobileNo+"','"+Email+"')");
    System.out.println("Data is successfully inserted into database.");
    ResultSet rs=st.executeQuery("Select * from Registered_accounts");
    if(rs.last()){
    	%>   
    	    
            <tr><td>User Name</td><td><%=rs.getString("User_Id")%></td></tr>
            <tr><td>First Name</td><td><%=rs.getString("FirstName")%></td></tr>
            <tr><td>Last Name</td><td><%=rs.getString("LastName")%></td></tr>
            <tr><td>Email</td><td><%=rs.getString("Email")%>"></td></tr>
            <tr><td>Contact No</td><td><%=rs.getString("ContactNo")%></td></tr>
            <tr><td>Password</td><td><%=rs.getString("Password")%></td></tr>
            
             
        <%
    }
    con.close();
}
catch(Exception e){
	out.println(e);
}
finally{
	out.println("<script type=\"text/javascript\">");
    out.println("alert('Account Created Successfully!! ');");
    out.println("location='login.jsp';");
    out.println("</script>");
}
        %>
        
        
</table>
</body>
</html>