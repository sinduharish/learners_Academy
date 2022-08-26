<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learners Academy</title>
<style>
* {
	padding: 0;
	margin: 0;
	font-family: sans-serif;
}

body {
	background: url('./admin.jpg') no-repeat;
	background-size: cover;
}

.login-form {
	width: 250px;
	top: 25%;
	left: 35%;
	position: absolute;
	color: white;
}

.login-form h2 {
	font-style: sans-serif;
	font-size: 20px; text-align; center;
	margin: 40px, 0;
}

.login-form p {
	font-color: white;
}

.login-form input {font-size =16px;
	width: 100%;
	padding: 5px 5px;
}

.login-form button {
	font-size: 18px;
	width: 50%;
	margin: 10px 130px;
}

.login-form button:hover {
	background-color: #87CEFA;
	color: black;
}
</style>



</head>
<body>

	<div class="login-form" method="post">
		<h2>ADMIN LOGIN FORM</h2>
		<br>
		<form action="login" method="POST">
			<p>User name</p>
			<input type="text" name="username" placeholder="Username"><br>
			<br>

			<p>Password</p>
			<input type="password" name="password" placeholder="Password"><br>
			<br>

			<button type="submit">Login</button>



		</form>


	</div>


</body>
</html>