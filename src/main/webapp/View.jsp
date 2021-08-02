<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%session.getAttribute("user");
      session.getAttribute("password");
      %>

<!DOCTYPE html>
<html>
<head>
<title>Welcome to Airlines</title>
<link rel="stylesheet" href="booking.css">
</head>
<body>
	<div class="banner">
		<div class="navbar" align="center">

			<ul>
				<li><a href="home.jsp">Home</a></li>
				<li><a href="Feedback.jsp">feedback</a></li>
			
				<li><a href="contactpage.jsp">contact us</a></li>
				<li><a href="logout.jsp">LogOut</a></li>
			</ul>
		</div>
	</div>
	<br>
	<br>
	
	
	
	<section id="first-tab-group" class="tabgroup">
		<div id="tab1" align="center">
			<div class="container">
				<%
					String P_ID=session.getAttribute("P_ID").toString();
					String F_ID=session.getAttribute("F_ID").toString();
					String Passenger_Name=session.getAttribute("Passenger Name").toString();
					String Fare=session.getAttribute("Fare").toString();
					String Source=session.getAttribute("From city").toString();
					String Dest=session.getAttribute("To city").toString();
					Connection con;
					Statement st;
					Class.forName("com.mysql.cj.jdbc.Driver");
				    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/accounts", "root", "@Syedshahid12345");
					ResultSet rs1;
				   
						
						st=con.createStatement();
					    rs1=st.executeQuery("select distinct T.*,F.Flight_date from Tickets as T ,flight_details as F where P_ID='"+P_ID+"' and T.Flight_ID=F.Flight_ID");
					    
					
					    %>
					    <script type="text/javascript">
									table.fixed { table-layout:fixed;} 
									table.fixed td { overflow: hidden; }
								</script>
							<table border="1" align="center" class="fixed">
							<h1>Booked Tickets</h1><br>
							<br>
								<col width="90px" />
								<col width="130px" />
								<col width="150px" />
								<col width="200px" />

								<tr>
									<td>Passenger ID</td>
									<td>Flight_ID</td>
									<td>Passenger Name</td>
									<td>Source</td>
									<td>Destination</td>
									<td>Fare</td>
									<td>Payment_ID</td>
									<td>Flight_Date</td>
								</tr>

								<tr>
								<%while(rs1.next()) 
								{
									
								
								%>
									<td><h5><%= rs1.getString("P_ID") %></h5></td>
									<td><h5><%= rs1.getString("Flight_ID") %></h5></td>
									<td><h5><%= rs1.getString("Name") %></h5></td>
									<td><h5><%= rs1.getString("Source") %></h5></td>
									<td><h5><%= rs1.getString("Destination") %></h5></td>
									<td><h5><%= rs1.getString("Fare") %></h5></td>
									<td><h5><%= rs1.getString("Transact_ID") %></h5></td>
									<td><h5><%= rs1.getString("Flight_date") %></h5></td>
									<td><form action="cancel.jsp" method="post"><input type="submit" value="Cancel Ticket"></form></td>
									
								</tr>
							</table>
						<%
								}
						con.close();
							%>
					</div>
	</section>

</body>
</html>