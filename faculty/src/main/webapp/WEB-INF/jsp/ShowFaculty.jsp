
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<table>
	<tr>
		<th>Empno</th>
		<th>Employ FirstName</th>
		<th>Employ LastName</th>
		<th>Date of birth</th>
		<th>Email</th>
		<th>Department</th>
		<th>Experience</th>
		<th>MobileNumber</th>
		<th>Qualification</th>
		<th>Gender</th>
		<th>City</th>
		<th>State</th>
		<th>Update</th>

	</tr>
	<c:forEach var="fa" items="${fac}">
		<tr>
			<td>${fa.empno}</td>
			<td>${fa.firstname}</td>
			<td>${fa.lastname}</td>
			<td>${fa.dateOfBirth}</td>
			<td>${fa.email}</td>
			<td>${fa.department}</td>
			<td>${fa.experience}</td>
			<td>${fa.mobileNumber}</td>
			<td>${fa.qualification}</td>
			<td>${fa.gender}</td>
			<td>${fa.city}</td>
			<td>${fa.state}</td>
			<%-- <%request.setAttribute("faculty", "fa"); %> --%>
			<td><a href="Facultyupdate/${fa.empno}">Update Information</a></td>

		</tr>
	</c:forEach>
</table>