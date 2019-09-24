<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Courses</h1>
<form action="addcourses" method="post">
<h3>Course Id:</h3>
<input type="text" name="courseId"/><br/>
<h3>Course Name:</h3>
<input type="text" name="courseName"/><br/>
<h3>Start Date:</h3>
<input type="date" name="startDate"/><br/>
<h3>End Date:</h3>
<input type="date" name="endDate"/><br/>
<input type="submit" value="add courses"/>
</form>


</body>
</html>