<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<table>
<tr>
<th>FacultyId</th>
<th>CourseId</th>
<th>CourseName</th>



</tr>
<c:forEach var="course" items="${course}">
<tr>
<td>${course.empno}</td>
<td>${course.courseId}</td>
<td>${course.courseName}</td>
</c:forEach>
</table>