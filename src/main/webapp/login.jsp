<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login to Airlines</title>

        <style>
            body{
           
                background-image:linear-gradient(rgba(0,0,0,0.45),rgba(0,0,0,0.45)),url("airline1.jpeg");
                background-size: cover;
                background-position: center top;
                background-repeat: no-repeat;
        		background-attachment: fixed;
                font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            }
            .loginbox{
                width: 300px;
                height: 400px;
                background:rgb(134, 128, 128);
                color: rgb(20, 41, 36);
                top: 50%;
                left: 50%;
                position: absolute;
                transform: translate(-50%,-50%);
                box-sizing: border-box;
                padding: 70px 30px;
            }
            .avatar{
                width: 100px;
                height: 100px;
                border-radius: 50%;
                position: absolute;
                top: -50px;
                left: calc(85% - 50%);
                
            }
            .h1{
                margin: 0;
                padding: 0 0 20px;
                text-align:center ;
                font-size: 20px;
            }
            .loginbox p{
                margin: 0;
                padding: 0;
                font-weight: bold;
            }
            .loginbox input{
                width: 100%;
                margin-bottom: 20px;

            }
            .loginbox input[type="text"], input[type="password"]  {
                border: none;
                border-bottom: 1px solid rgb(29, 10, 10);
                background: transparent;
                outline: none;
                height: 40px;
                color: rgb(7, 13, 19);
            }
            .loginbox input[type="submit"]{
                border: none;
                outline: none;
                height: 40px;
                background: rgb(194, 186, 186);
                color: aliceblue;
                font-size: 18px;
                border-radius: 20px;
            }
            .loginbox input[type="submit"]:hover{
                cursor:pointer;
                background:color ;
                color: rgb(209, 203, 218);

            }
            .loginbox a{
                text-decoration: none;
                font-size: 12px;
                line-height: 20px;
                color: rgb(26, 32, 39);
            }
            .loginbox a:hover{
                color: aliceblue;
            }
            .loginbox input[type="checkbox"]{
            	width: 10%;
                margin-bottom: 30px;
            	margin-left: -10px;
            
            }
        </style>


<script>
function validate(){
var username=document.form.user.value;
var password=document.form.pass.value;
if(username==""){
 alert("Enter Username!");
  return false;
}
if(password==""){
 alert("Enter Password!");
  return false;
}
return true;
}
function myFunction() {
	var x = document.getElementById("pass");
	if (x.type === "password") {
		x.type = "text";
	}else {
		x.type = "password";
	}
}
</script>
</head>
<body>
<div class="content">
	<div class="col-md-6">
    	<div class="logo" align="center">
			<img src="img/logo.png" alt="Flight Template">
		</div>
	</div>
<div class= "loginbox" >
<img src="OIP.jpg "  class="avatar">
<form name="form" method="post" action="check.jsp" onsubmit="home.jsp">
                <p>User name</p>
                <input type="text" name="user" placeholder="Enter user name" required>
                <p>Password</p>
                <input id="pass" type="password" name="pass" placeholder="Enter password" required>
                
                <input type="checkbox" onclick="myFunction()">Show Password
                
                <input type="submit" name="" value="login">
                                
                <a href="forgot.jsp" >forgot password?</a><br>

                <a href="register.jsp">create a new account!</a><br>
</form>
</div>
</body>
</html>