<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
		try{
			String user=request.getParameter("user");
			String pass=request.getParameter("pass");
			String u,p;
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/accounts","root","@Syedshahid12345");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("Select User_Id , Password from Registered_accounts where User_Id='"+user+"' and Password='"+pass+"'");
			rs.next();
		    if(user.equals(u=rs.getString("User_Id")) && pass.equals(p=rs.getString("Password"))){
		    	session.setAttribute("user", user) ;
		    	session.setAttribute("password",pass);
		    	response.sendRedirect("insert_login.jsp");
		    }
		    con.close();
		}catch(Exception e){
			out.println("<script type=\"text/javascript\">");
	        out.println("alert('UserName or password incorrect');");
		    out.println("location='login.jsp';");
		  	out.println("</script>");
			
		}
		%>