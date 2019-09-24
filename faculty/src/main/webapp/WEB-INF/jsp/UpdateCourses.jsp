<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Update Information</h1>
<form action="updcourses" method="post">
CourseId:
<input type="text" name="courseId" value="${courses.courseId}"/><br/>
CourseName:
<input type="text" name="courseName" value="${courses.courseName}"/><br/>
Start Date:
<input type="date" name="startDate" value="${courses.startDate}"/><br/>
End Date:
<input type="date" name="endDate" value="${courses.endDate}"/><br/>
<input type="submit" value="Submit">
</form>
</body>
</html>