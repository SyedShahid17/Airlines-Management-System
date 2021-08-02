<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Ticket Download</title>
<style>
* {
	margin: auto;
	padding: 0;
	font-family: sans-serif;
}
.aaa{ color: white;

}
.banner {
	width: 100%;
	height: 25vh;
	background-image: linear-gradient(rgba(0, 0, 0, 0.25),	rgba(0, 0, 0, 0)), url("airline1 - Copy.jpeg");
	background-size: cover;
	background-position: center;
}

.navbar {
	width: 85%;
	margin: auto;
	padding: 35px 0;
	align-items: flex-end;
	justify-content: space-between;
}

.navbar ul li {
	list-style: none;
	display: inline-table;
	margin: 0 20px;
	position: relative;
}

.navbar ul li a {
	text-decoration: none;
	color: threedlightshadow;
	text-transform: uppercase;
}

.navbar ul li::after {
	content: '';
	height: 3px;
	width: 0;
	background: #009688;
	position: absolute;
	left: 0;
	bottom: -10px;
	transition: 0.5s;
}

.navbar ul li:hover::after {
	width: 100%;
}

.content {
	width: 100%;
	position: ceter;
	top: 50%;
	transform: translate(0%);
	text-align: center;
	color: white;
}

.content h1 {
	font-size: 70px;
	margin-top: 80px;
}

.content p {
	margin: 20px auto;
	font-weight: 100;
	line-height: 25px;
}

button {
	width: 200px;
	padding: 15px 0;
	text-align: center;
	margin: 20px 10px;
	border-radius: 25px;
	font-weight: bold;
	border: 2px solid #009688;
	background: transparent;
	color: #fff;
	cursor: pointer;
	position: relative;
	overflow: hidden;
}

span {
	background: #009688;
	height: 100%;
	width: 100%;
	border-radius: 25px;
	position: absolute;
	left: 0;
	bottom: 0;
	z-index: -1;
	transition: 0.5s;
}

button:hover span {
	width: 100%;
}

button:hover {
	border: none;
}

</style>
</head>
<body>



<section id="first-tab-group" class="tabgroup">
<div class="banner">
		<div id="tab1" align="center">
			<div class="container">
				<%
					String T_ID=request.getParameter("ID");
					String P_ID=session.getAttribute("P_ID").toString();
					String F_ID=session.getAttribute("F_ID").toString();
					String Passenger_Name=session.getAttribute("Passenger Name").toString();
					String Fare=session.getAttribute("Fare").toString();
					String Source=session.getAttribute("From city").toString();
					String Dest=session.getAttribute("To city").toString();
					session.setAttribute("T_ID", T_ID);
					Connection con;
					Statement st;
					Class.forName("com.mysql.cj.jdbc.Driver");
				    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/accounts", "root", "@Syedshahid12345");
					try{
						
					    st=con.createStatement();
					    int i=st.executeUpdate("Insert into Tickets(P_ID,Flight_ID,Name,Source,Destination,Fare,Transact_ID) values('"+P_ID+"','"+F_ID+"','"+Passenger_Name+"','"+Source+"','"+Dest+"','"+Fare+"','"+T_ID+"')");
					}catch(Exception e){
								out.println(e);
					}
						st=con.createStatement();
					    ResultSet rs1=st.executeQuery("select T.*,F.Flight_date from Tickets as T ,flight_details as F where T.P_ID='"+P_ID+"' and T.Flight_ID=F.Flight_ID ");
					    rs1.next();
					    %>
					    <script type="text/javascript">
									table.fixed { table-layout:fixed;} 
									table.fixed td { overflow: hidden; }
								</script>
						<form>
							<table id="aaa" border="1" align="center" class="fixed">
							<h1>Flight Ticket</h1>
								<col width="90px" />
								<col width="130px" />
								<col width="150px" />
								<col width="200px" />

								<tr>
									<td><h3>Passenger ID</h3></td>
									<td><h3>Flight_ID</h3></td>
									<td><h3>Passenger Name</h3></td>
									<td><h3>Source</h3></td>
									<td><h3>Destination</h3></td>
									<td><h3>Fare</h3></td>
									<td><h3>Payment_ID</h3></td>
									<td><h3>Flight_Date</h3></td>
								</tr>

								<tr>
									<td><h5><%= rs1.getString("P_ID") %></h5></td>
									<td><h5><%= rs1.getString("Flight_ID") %></h5></td>
									<td><h5><%= rs1.getString("Name") %></h5></td>
									<td><h5><%= rs1.getString("Source") %></h5></td>
									<td><h5><%= rs1.getString("Destination") %></h5></td>
									<td><h5><%= rs1.getString("Fare") %></h5></td>
									<td><h5><%= rs1.getString("Transact_ID") %></h5></td>
									<td><h5><%= rs1.getString("Flight_date") %></h5></td>
									
								</tr>
							</table>
						</form>
						<%
						con.close();
							%>
					</div>
					</div>
					</div>
	</section>

</body>
</html>