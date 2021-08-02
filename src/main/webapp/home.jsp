<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%session.getAttribute("user");
      session.getAttribute("password");
      %>

<!DOCTYPE html>
<html>
<head>
<title>Welcome to Airlines</title>
<link rel="stylesheet" href="shreyu.css">
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
		<div class="content">
			<div class="col-md-6">
				<div class="logo">
					<img src="logo.png" alt="Flight Template"> 
					<h1>Welcome to Airlines</h1>
					<p>Come have a safe journey with us!!!!!</p>
				</div>
			</div>
			<div>
				<a href="Index.jsp"><button type="button">Check For Ticket</button></a>
				<a href="booking.jsp"><button type="button">Ticket Information</button></a>
				
				<a href="View.jsp"><button>View Tickets</button></a>
				<!-- <button type="button">Flying Returns</button> -->
			</div>
		</div>
	</div>
</body>
</html>