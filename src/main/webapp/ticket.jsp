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
						<form action="ticketdownload.jsp" method="post">
							<table class="fixed" align="center">
								<col width="150px" />
								<col width="250px" />
								<col width="150px" />
								<col width="250px" />
								<div class="col-md-12">
									<div class="section-heading">
										<h2>Ticket Details</h2>
									</div>
								</div>
								<br>
								<tr>
									Please Enter Transaction ID To Generate Ticket:</tr>
									<tr><input id="ticket" type="tel" name="ID" minlength="10"
										placeholder="10 digit Transaction_ID" maxlength="10"
										required="required"><br>
										<br>
										<tr><input type="submit" value="Genereate Ticket"></tr>
								</tr>
								<br>
								<br>
								</table></form></div></div></section>
								
	
								
								
								
										
										
										
										
										
										
										
										
										
										