<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New Ninja</title>
</head>
<body>
	<div class="header">
		<h1>New Ninja</h1>
		<a href="/">Home</a>
	</div>
	<form:form action="/ninjas/new" modelAttribute="ninja" method="POST">
		<form:label path="dojo">Dojo: 
		<form:errors path="dojo"/>
		<form:select path="dojo">
			<c:forEach items="${dojos}" var="dojo">
				<form:option value="${dojo.id}" label="${dojo.name}" />
			</c:forEach> 
		</form:select></form:label>
		
		<form:label path="firstName">First Name: 
		<form:errors path="firstName" />
		<form:input path="firstName" /></form:label>
		
		<form:label path="lastName">Last Name: 
		<form:errors path="lastName" />
		<form:input path="lastName" /></form:label>
		
		<form:label path="age">Age: 
		<form:errors path="age" />
		<form:input type="number" path="age" /></form:label>
		
		<input type="submit" value="Add Ninja" />
	</form:form>
</body>
</html>