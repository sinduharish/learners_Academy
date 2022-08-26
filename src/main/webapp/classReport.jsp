<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
	font-family: arial;
	box-sizing: border-box;
}

.title {
	color: #2E77F4;
	font-size: 18px;
	font-family: 'Roboto', san-serif;
	text-align: left;
	margin-bottom: 19px;
}

table {
	width: 600px;
	box-shadow: -1px 12px 12px -6px rgba(0, 0, 0, 0.5);
}

table td th {
	padding: 20px;
	border: 1px solid lightgray;
	border-collapse: collapse;
	text-align: center;
}

td {
	font-size: 18px;
	font-family: 'open san', san-serif;
}

th {
	background-color: #2E77F4;
	color: white;
	font-size: 20px;
	font-family: 'Roboto', san-serif;
}

tr:nth-child(odd) {
	background-color: #C2D8FF;
}

tr {
	text-align: center;
}
</style>
</head>
<body>



	<%@include file="frame.jsp"%>

	<div
		style="margin-left: 25%; padding: 1px 16px; margin-top: 2%; height: 100px;">

		<div class=title>
			<h1>Class Report</h1>
		</div>


		<table border="1">
			<tr>
				<th>Student ID</th>
				<th>Student Name</th>
				<th>Class</th>
				<th>Subject</th>
				<th>Teachers</th>
			</tr>

			<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/learnersacademy", "root", "root");

			Statement st = con.createStatement();
			String query = "select students.student_id,students.student_name,class.class_name,subjects.subject,teachers.teacher_name from students inner join subjects on students.class=subjects.class inner join teachers on subjects.subject_id=teachers.teacher_id inner join class on class.class_name=subjects.class order by students.student_id ";
			ResultSet rs = st.executeQuery(query);

			while (rs.next()) {
			%>
			<tr>

				<td><%=rs.getString("student_id")%></td>
				<td><%=rs.getString("student_name")%></td>
				<td><%=rs.getString("class_name")%></td>
				<td><%=rs.getString("subject")%></td>
				<td><%=rs.getString("teacher_name")%></td>

			</tr>
			<%
			}
			%>

		</table>
	</div>



</body>
</html>