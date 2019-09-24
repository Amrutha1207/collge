<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<table>
<tr>
<th>CourseId</th>
<th>CourseName</th>
<th>Start Date</th>
<th>End Date</th>
<th>UpdateCourse</th>
<th>DeleteCourse</th>

</tr>
<c:forEach var="course" items="${course}">
<tr>
<td>${course.courseId}</td>
<td>${course.courseName}</td>
<td>${course.startDate}</td>
<td>${course.endDate}</td>
<td><a href="CourseUpdate.pg?courseId=${course.courseId}&courseName=${course.courseName}&startDate=${course.startDate}&endDate=${course.endDate}">Update</a></td>
</tr><a href="CourseDelete.pg?courseId=${course.courseId}">Delete</a>
</c:forEach>
</table>