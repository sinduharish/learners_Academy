<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>

<style>
.head {
	color: white;
	background-color: #2E77F4;
	text-align: left;
	font-size: 30px;
	padding: 10px 15px 15px 15px;
	font-family: courier;
	position: relative;
}

.admin {
	color: white; text-align ="center";
	font-size: 20px;
	position: absolute;
	top: 15px;
	right: 10px;
}

.nav {
	position: fixed;
	height: 100%;
	width: 200px;
	background-color: #538FF8;
	color: white;
}

.nav ul li {
	box-shadow: 0 5px 25px rgba(0, 0, 0, .1);
	list-style-type: none;
	margin: 5px;
	padding: 15px;
	border-bottom: 1px solid rgba(0, 0, 0, 0.05);
	border-top: 1px solid rgba(225, 225, 225, 0.05);
	transition: transforn 0.5s;
}

.nav ul li a {
	color: #C2D8FF;
}

.nav ul li:hover {
	background: #84ABEE;
	transform: scale(1.1);
	z-index: 100;
	box-shadow: 0 5px 25px rgba(0, 0, 0, .2);
}

.nav ul li:hover a {
	color: white;
}

a {
	text-decoration: none;
}
</style>
<body>

	<div class="head">
		Learner's Academy

		<div class="admin">Welcome admin</div>
	</div>



	<div class="nav">
		<ul>
			<li><a href="teacher.jsp">Teachers</a></li>
			<li><a href="class.jsp">Class</a></li>
			<li><a href="subject.jsp">Subjects</a></li>
			<li><a href="student.jsp">Students</a></li>
			<li><a href="classReport.jsp">Class report</a></li>
			<li><a href="loginForm.jsp">Logout</a></li>

		</ul>


	</div>






</body>
</html>