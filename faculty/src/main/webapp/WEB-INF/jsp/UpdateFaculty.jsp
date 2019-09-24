<%@page import="java.sql.ResultSet"%>
<%@page import="com.virtusa.faculty.service.FacultyServiceIface"%>
<%@page import="com.virtusa.faculty.service.FacultyServiceImpl"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.virtusa.faculty.models.Faculty"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-image: url("images/book.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	color: blue;
}
</style>
</head>
<body>
	
	<form method="get" action="Update" >
	
		${fac.dateOfBirth}
			Employ No : <input type="text" name="empno" id="en" value="${fac.empno}"/><br/>
			<br/> First Name : <input type="text" name="firstname" id="fn"value="${fac.firstname}"/> <br/>
			<br/> Last Name : <input type="text" name="lastname" id="ln" value="${fac.lastname}"/> <br/>
			<br/> E-mail : <input type="text" name="email" value="${fac.email}"/> <br/>
			<br/>Date Of Birth (yyyy-MM-dd):<input type="date" name="dateOfBirth" value="${fac.dateOfBirth}"/>
			<br/> Mobile Number : <input type="text" name="mobileNumber" value="${fac.mobileNumber}"/> <br/>
			<br/> Qualification : <input type="text" name="qualification" value="${fac.qualification}"/> <br/>
			<br/> Experience : <input type="text" name="experience" value="${fac.experience}"/> <br/>
			<br/> Department : <input type="text" name="department" value="${fac.department}"/> <br/>
			<br/> Gender : <input type="text" name="gender" value="${fac.gender}"/> <br/>
			<br/> City : <input type="text" name="city" value="${fac.city}"/> <br/>
			<br/> State : <input type="text" name="state" value="${fac.state}"/> <br/>
			<br/> <input type="submit" value="click" />
	</form>

</body>
</html>