<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>forgot password?</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	background: linear-gradient(rgba(0, 0, 0, 0.45), rgba(0, 0, 0, 0.45)),
		url("airline1 - Copy.jpeg");
	background-size: cover;
	background-position: bottom;
	background-repeat: no-repeat;
	background-attachment: fixed;
	font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}

.content {
	width: 230px;
	height: 320px;
	left: 20%;
	width: 75%;
	margin: auto;
	padding: 65px 0;
}

.forgotbox {
	width: 250px;
	height: 320px;
	color: white;
	top: 30%;
	left: 20%;
	position: absolute;
	transform: translate(-50%, -50%);
	box-sizing: content-box;
	padding: 70px 30px;
}
</style>
<body align="center">
	<form method="post" action="changepass.jsp">
		<div class="forgotbox">
			<div class="content" align="justify">
				<div class="col-md-6">
					<div class="logo">
						<img src="logo.png" alt="Flight Template">
						<h1>Reset Password</h1>
						<p>
						<h4>Enter UserId/UserName</h4>
						</p>
						<input type="text" name="user" placeholder="Enter UserId/Username"
							required="required">
						<p>
						<h4>Enter New Password</h4>
						</p>
						<input type="text" name="newpass" placeholder="Enter New Password"
							required="required">
						<p>
						<h4>Confirm New Password</h4>
						<input type="text" name="confirmnwpass"
							placeholder="Confirm Password" required="required"> <input
							type="submit" name="" value="Reset">
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</head>
</html>