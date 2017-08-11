<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dojo Details</title>
</head>
<body>
	<div class="header">
		<a href="/">Home</a>
		<h1><c:out value="${dojo.name}" /> Ninjas</h1>
	</div>
	<div class="content">
		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
			</tr>
			
			<c:forEach items="${ninjas}" var="ninja">
			<tr>
				<td><c:out value="${ninja.firstName}" /></td> 
				<td><c:out value="${ninja.lastName}" /></td> 
				<td><c:out value="${ninja.age}" /></td> 
			</tr>
			</c:forEach>
		</table>
	</div>
	
</body>
</html>