<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New Dojo</title>
</head>
<body>
	<div class="header">
		<h1>New Dojo</h1>
		<a href="/">Home</a>
	</div>
	
	
	<form:form action="/dojos/new" modelAttribute="dojo" method="POST">
		<form:label path="name">Name: 
		<form:errors path="name" />
		<form:input path="name" /></form:label>
		
		<input type="submit" value="Add Dojo">
	</form:form>
</body>
</html>