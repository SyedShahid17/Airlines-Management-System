<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<title>Flight - Travel and Tour</title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/fontAwesome.css">
<link rel="stylesheet" href="css/hero-slider.css">
<link rel="stylesheet" href="css/owl-carousel.css">
<link rel="stylesheet" href="css/datepicker.css">
<link rel="stylesheet" href="css/tooplate-style.css">


<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800"
	rel="stylesheet">

<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>

<body>


	<section class="banner" id="top">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<div class="left-side">
						<div class="logo">
							<img src="logo.png" alt="Flight Template">
						</div>
						<div class="page-direction-button">
							<a href="home.jsp">Home page</a>
						</div>
						<div class="page-direction-button">
							<a href="logout.jsp">Logout</a>
						</div>
					</div>
				</div>
				<div class="col-md-5 col-md-offset-1">
					<section id="first-tab-group" class="tabgroup">
						<div id="tab1">
							<div class="submit-form">
								<h4>
									Check availability for <em>direction</em>:
								</h4>
								<form id="form-submit" action="Index.jsp" method="post">
									<div class="row">
										<div class="col-md-6">
											<fieldset>
												<label for="from">From:</label> <select required name='from'
													onchange='this.form.()'>
													<option value="">Select a location...</option>
													<option value="Bangalore">Bangalore</option>
													<option value="Mumbai">Mumbai</option>
													<option value="Chennai">Chennai</option>
													<option value="Kolkata">Kolkata</option>
													<option value="Lucknow">Lucknow</option>
													<option value="Amritsar">Amritsar</option>
													<option value="Vishakapatnam">Vishakapatnam</option>
													<option value="Kannur">Kannur</option>
													<option value="Surat">Surat</option>
													<option value="Indore">Indore</option>
													<option value="Kochi">Kochi</option>
													<option value="Ahmedabad">Ahmedabad</option>
													<option value="Delhi">Delhi</option>
													<option value="Goa">Goa</option>
													<option value="Pune">Pune</option>
													<option value="Hyderabad">Hyderabad</option>
													<option value="Chandigarh">Chandigarh</option>
													<option value="Srinagar">Srinagar</option>
													<option value="Patna">Patna</option>
													<option value="Madurai">Madurai</option>
													<option value="Jaipur">Jaipur</option>
												</select>
											</fieldset>
										</div>
										<div class="col-md-6">
											<fieldset>
												<label for="to">To:</label> <select required name='to'
													onchange='this.form.()'>
													<option value="">Select a location...</option>
													<option value="Bangalore">Bangalore</option>
													<option value="Mumbai">Mumbai</option>
													<option value="Chennai">Chennai</option>
													<option value="Kolkata">Kolkata</option>
													<option value="Lucknow">Lucknow</option>
													<option value="Amritsar">Amritsar</option>
													<option value="Vishakapatnam">Vishakapatnam</option>
													<option value="Kannur">Kannur</option>
													<option value="Surat">Surat</option>
													<option value="Indore">Indore</option>
													<option value="Kochi">Kochi</option>
													<option value="Ahmedabad">Ahmedabad</option>
													<option value="Delhi">Delhi</option>
													<option value="Goa">Goa</option>
													<option value="Pune">Pune</option>
													<option value="Hyderabad">Hyderabad</option>
													<option value="Chandigarh">Chandigarh</option>
													<option value="Srinagar">Srinagar</option>
													<option value="Patna">Patna</option>
													<option value="Madurai">Madurai</option>
													<option value="Jaipur">Jaipur</option>
												</select>
											</fieldset>
										</div>
										
										<div class="col-md-6">
											<fieldset>
												<button type="submit" id="form-submit" class="btn">Book
													Ticket Now</button>
											</fieldset>
										</div>
									</div>
								</form>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
	</section>

	<section>
		<h4></h4>
	</section>


	<section id="first-tab-group" class="tabgroup">
		<div id="tab1" align="center">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="section-heading">
							<h2>List of available flights</h2>
						</div>
					</div>
					<form id="form-submit" action="booking.jsp" method="post">
						<div class="col-md-12">
							<%@page import="java.sql.*"%>
							<%
								String from=request.getParameter("from");
								String to=request.getParameter("to");
								ResultSet rs;
								try{
									Class.forName("com.mysql.cj.jdbc.Driver");
								    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/accounts", "root", "@Syedshahid12345");
								    Statement st=con.createStatement();
								    rs=st.executeQuery("SELECT distinct F.Flight_ID as ID, F.Take_Off as Source , F.Destination , F.Flight_date FROM Flight_details as F , airfare as B where F.Destination='"+to+"' and F.Take_Off='"+from+"' order by F.Flight_date ");
								    %>
							<h4>NOTE: (Please make a note of the Flight_ID you are going
								to book for further references)</h4>
							<script type="text/javascript">
									        table.fixed { table-layout:fixed; }
									        table.fixed td { overflow: hidden; }
								        
								        </script>
							<table border="1" align="center" class="fixed">
								<col width="90px" />
								<col width="130px" />
								<col width="150px" />
								<col width="200px" />
								<tr>
									<td><h2>Flight_ID</h2></td>
									<td><h2>Source</h2></td>
									<td><h2>Destination</h2></td>
									<td><h2>Flight_date</h2></td>
									<td><h2>Total Fare (incl taxes)</h2></td>
									<td><h2 align="center">Book Ticket</h2></td>
								</tr>
								<%
								    	    while(rs.next())
								    	    {
								    	    	%>

								<tr>
									<td name="ID"><h5><%= rs.getString("ID") %></h5></td>
									<td><h5><%= rs.getString("Source") %></h5></td>
									<td><h5><%= rs.getString("Destination") %></h5></td>
									<td><h5><%= rs.getString("Flight_date") %></h5></td>
									<td><h5>7500</h5></td>
									<td><button>BOOK</button>
									<td>
								</tr>
								<%
								    	    }
								    	%>
							</table>
							<%
								    con.close();
								}catch(Exception e){
									out.println(e);
								}
								%>
							<%
									session.setAttribute("From city", from);
									session.setAttribute("To city", to);	
								%>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section><br>


<br>






	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="primary-button">
						<a href="#" class="scroll-top">Back To Top</a>
					</div>
				</div>
				<div class="col-md-12">
					<ul class="social-icons">
						<li><a href="https://www.facebook.com/tooplate"><i
								class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>





	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

	<script src="js/vendor/bootstrap.min.js"></script>

	<script src="js/datepicker.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/main.js"></script>

	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"
		type="text/javascript"></script>
	<script type="text/javascript">
    $(document).ready(function() {

        

        // navigation click actions 
        $('.scroll-link').on('click', function(event){
            event.preventDefault();
            var sectionID = $(this).attr("data-id");
            scrollToID('#' + sectionID, 750);
        });
        // scroll to top action
        $('.scroll-top').on('click', function(event) {
            event.preventDefault();
            $('html, body').animate({scrollTop:0}, 'slow');         
        });
        // mobile nav toggle
        $('#nav-toggle').on('click', function (event) {
            event.preventDefault();
            $('#main-nav').toggleClass("open");
        });
    });
    // scroll function
    function scrollToID(id, speed){
        var offSet = 0;
        var targetOffset = $(id).offset().top - offSet;
        var mainNav = $('#main-nav');
        $('html,body').animate({scrollTop:targetOffset}, speed);
        if (mainNav.hasClass("open")) {
            mainNav.css("height", "1px").removeClass("in").addClass("collapse");
            mainNav.removeClass("open");
        }
    }
    if (typeof console === "undefined") {
        console = {
            log: function() { }
        };
    }
    </script>
</body>
</html>