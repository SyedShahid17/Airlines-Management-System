<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	background: linear-gradient(rgba(0, 0, 0, 0.45), rgba(0, 0, 0, 0.45)),url("airline1 - Copy.jpeg");
	background-size: cover; 
	background-position: bottom;
	background-repeat: no-repeat;
	background-attachment: fixed;
	font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}

.account {
	width: 400px;
	height: 825px;
	background:;
	color: rgb(20, 41, 36);
	top: 60%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
	padding: 100px 30px;
}

.h1 {
	margin: 0;
	padding: 0 0 0px;
	text-align: justify;
	font-size: 20px;
}

.account p {
	margin: 0;
	padding: 0;
	font-weight: bold;
}

.account input {
	width: 100%;
	margin-bottom: 20px;
	color: black;
}

.account input[type="text"], input[type="password"] {
	border: none;
	border-bottom: 1px solid rgb(29, 10, 10);
	background: transparent;
	outline: none;
	height: 40px;
	color: rgb(7, 13, 19);
}

.account x input[type="submit"] {
	border: none;
	outline: none;
	height: 40px;
	background: rgb(209, 203, 218);
	color: green;
	font-size: 18px;
	border-radius: 20px;
}

.account input[type="submit"]:hover {
	cursor: pointer;
	background: color;
	color: black;
}

.account a {
	text-decoration: none;
	font-size: 12px;
	line-height: 20px;
	color: rgb(26, 32, 39);
}

.account a:hover {
	color: aliceblue;
}

.logo {
	left: %;
	margin: auto;
	color: white;
}
</style>

<script>

function validate(){
     if(document.form.username.value == ""){
        alert("Please enter user name." );
        document.form.username.focus();
        return false;
    }
    if(document.form.fname.value == ""){
        alert("Please enter first name." );
        document.form.fname.focus();
        return false;
    }
     if(document.form.lname.value == ""){
        alert("Please enter last name." );
        document.form.lname.focus();
        return false;
    }

    if(document.form.email.value == ""){
        alert("Please enter Email." );
        document.form.email.focus();
        return false;
    }
    if(document.form.mobilenum.value == ""){
        alert("Please enter mobile no." );
        document.form.mobilenum.focus();
        return false;
    }
        return true;
   }  
   
   
	function onChange() {
		const password = document.querySelector('input[name=password]');
		const confirm = document.querySelector('input[name=repassword]');
		if (confirm.value === password.value) {
			confirm.setCustomValidity('');
		}
		else {
			confirm.setCustomValidity('Passwords do not match');
		}
	}
</script>
<form name="form" method="post" onsubmit="return validate();"
	action="insert_data.jsp">
	<div class="account">
		<div class="content" align="justify">
			<div class="col-md-6">
				<div class="logo">
					<div class="col-md-5 col-md-offset-1">
						<section id="first-tab-group" class="tabgroup">
							<div id="tab1">
								<img src="logo.png" alt="Flight Template">
								<h1>CREATE ACCOUNT</h1>
								<p>UserName</p>
								<input type="text" name="username"
									placeholder="Enter Username/UserID to login"
									required="required">
								<p>First name</p>
								<input type="text" name="fname" placeholder="Enter first name"
									required="required">
								<p>Last name</p>
								<input type="text" name="lname" placeholder="Enter last name"
									required="required">
								<p>Email id</p>
								<input type="email" name="email"
									placeholder="Enter your mail-id" required="required">
								<p>Mobile number</p>
								<input type="tel" name="mobilenum"
									placeholder="Enter your mobile number" maxlength="10"
									required="required">
								<p>Password</p>
								<input id="password" type="password" name="password"
									placeholder="Enter your password" onchange="onChange()"
									required="required">
								<p>Re-enter your Password</p>
								<input id="confirmpassword" type="password" name="repassword"
									placeholder="Enter your password" onchange="onChange()"
									required="required"> <input type="submit" name=""
									value="create account">
							</div>
						</section>
					</div>
				</div>

			</div>
		</div>
	</div>
</form>
</html>