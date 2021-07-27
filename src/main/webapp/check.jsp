<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="org.apache.jasper.compiler.ErrorDispatcher"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<%
try{
String user=request.getParameter("user");
String pass=request.getParameter("pass");
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/accounts","root","@Syedshahid12345");  
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from Registered_accounts where User_Id='"+user+"' and Password='"+pass+"'");
int count=0;
while(rs.next())
{
	count++;
}
if(count>0){
	
    Statement s=con.createStatement();
    ResultSet rst=s.executeQuery("select * from Registered_accounts where User_Id='"+user+"' and Password='"+pass+"'");
    while(rst.next()){
        %>
        <body bgcolor="olive" align="center">
        <h1><%out.println("WELCOME "+ user); %></h1>
        <h3>Your Account Information</h3>
        <table align="center">
         	<tr><td>FirstName:</td><td><%=rst.getString("FirstName")%></td></tr>
            <tr><td>LastName:</td><td><%=rst.getString("LastName")%></td></tr>
            <tr><td>Contact No:</td><td><%=rst.getString("ContactNo")%></td></tr>
            <tr><td>Email:</td><td><%=rst.getString("Email")%></td></tr>
         </table>
         </body>
         <%
    }
}
else if (count==0){
	out.println("<script type=\"text/javascript\">");
    out.println("alert('UserName or password incorrect');");
    out.println("location='login.jsp';");
    out.println("</script>");

	
	/**String arg="User_Id and password doesn't exist";
	request.setAttribute("string", arg);
	request.getRequestDispatcher("login.jsp").forward(request, response);*/
	
}
}
catch(Exception e){
	System.out.println(e);
}
finally{
	response.sendRedirect("home.jsp");
	
}
%>