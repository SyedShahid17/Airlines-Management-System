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
						<%@page import="java.sql.*"%>
						<form action="booking.jsp" method="post">
							<table class="fixed" align="center">
								<col width="150px" />
								<col width="250px" />
								<col width="150px" />
								<col width="250px" />
								<div class="col-md-12">
									<div class="section-heading">
										<h2>Enter Flight Details</h2>
									</div>
								</div>
								<br>
								<tr>
									Please Enter Flight ID :
									<input id="flight" type="text" name="Flightid"
										placeholder="Flight_ID of the flight you booked"
										required="required">
								</tr>
								<br>
								<br>
								<div class="col-md-12">
									<div class="section-heading">
										<h2>Please Enter Your Passport Details</h2>
									</div>
								</div>
								<br>
									<tr>
										<td>Passport number :</td>
										<td><input type="text" name="passport"
											placeholder="A2096457" minlength="8" maxlength="8" required="required"></td>
									</tr>
									<tr>
										<td>Name :</td>
										<td><input type="text" name="name"
											placeholder="Your Name as in Passport" required="required"></td>
									</tr>
									<tr>
										<td>Age :</td>
										<td><input name="age" type="text"
											placeholder="Age as in Passport" minlength="2" maxlength="2" required="required"></td>
									</tr>
									<tr>
										<td>Gender :</td>
										<td><input name="gender" type="text" placeholder="gender" minlength="4" maxlength="6"
											required="required"></td>
									</tr>
									<tr>
										<td>Contact :</td>
										<td><input name="contact" type="tel" size="10" minlength="10" maxlength="10"
											placeholder="1234567890" required="required"></td>
									</tr>
									<tr>
										<td>Address :</td>
										<td><input name="add" type="text"
											placeholder="City, State, Country" required="required"></td>
									</tr>
									<tr colspan="1" align="char">
									    <td></td>
										<td><input type="submit">
										
										<input type="reset"></td>
									</tr>
								


							</table>
						</form><br>
						
						<br>
						



						<%
							String P_ID=request.getParameter("passport");
							String F_ID=request.getParameter("Flightid");
							String Name=request.getParameter("name");
							String Age=request.getParameter("age");
							String Gender=request.getParameter("gender");
							String Contact=request.getParameter("contact");
							String Address=request.getParameter("add");
							String Fare="7500";
							session.setAttribute("P_ID", P_ID);
							session.setAttribute("F_ID", F_ID);
							session.setAttribute("Passenger Name", Name);
							session.setAttribute("Fare", Fare);
							try{
								Class.forName("com.mysql.cj.jdbc.Driver");
							    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/accounts", "root", "@Syedshahid12345");
							    Statement st=con.createStatement();
							    int i=st.executeUpdate("Insert into passenger_details(P_ID,P_Name,Flight_ID,Age,Gender,Contacts,Address) values('"+P_ID+"','"+Name+"','"+F_ID+"','"+Age+"','"+Gender+"','"+Contact+"','"+Address+"')");
							    out.println("Passenger added successfully");
							    ResultSet rs1=st.executeQuery("select P_ID,P_Name,Flight_ID,Fare from passenger_details where P_ID='"+P_ID+"'");
							    rs1.next();

							   
							    %>

						<script type="text/javascript">
									table.fixed { table-layout:fixed;} 
									table.fixed td { overflow: hidden; }
								</script>
						<form action="payment.jsp" method="post">
							<table border="1" align="center" class="fixed">
								<col width="90px" />
								<col width="130px" />
								<col width="150px" />
								<col width="200px" />

								<tr>
									<td>Passenger ID</td>
									<td>Passenger Name</td>
									<td>Flight_ID</td>
									<td>Fare</td>
								</tr>

								<tr>
									<td><h5><%= rs1.getString("P_ID") %></h5></td>
									<td><h5><%= rs1.getString("P_Name") %></h5></td>
									<td><h5><%= rs1.getString("Flight_ID") %></h5></td>
									<td><h5><%= rs1.getString("Fare") %></h5></td>
									<td><button onclick="function()">BOOK TICKET</button></td>
								</tr>
								<script>
                								$(document).ready(function () {
                    								$("button").click(function () {
                        							// Select all the rows in the table
                       							   // and get the count of the selected elements
                        								var rowCount = $("#tableId tr:last").index() + 1;
                       	 								alert("Total Rows in HTML Table: " + rowCount);
								                    });
								                });
								            </script>
							</table>
						</form>
						<%
										con.close();
							}catch(Exception e){
								System.out.println(e);
							}
							%>
					</div>
	</section>



</body>
</html>