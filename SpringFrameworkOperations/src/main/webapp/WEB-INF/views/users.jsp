<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Users</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<spring:url value="/resources/css/home.css"/>" type="text/css" />
<link rel="stylesheet"
	href="<spring:url value="/resources/css/bootstrap-select.min.css"/>"
	type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script
	src="<spring:url value="/resources/js/bootstrap-select.min.js"/>"></script>

</head>
<body>

	<jsp:include page="../views/fragments/header.jsp"></jsp:include>

	<div class="container">
		<h2>Users</h2>
		<table class="table table-hover">
			<tbody>
				<tr>
					<th>Username</th>
					<th>FirstName</th>
					<th>LastName</th>
					<th>E-Mail</th>
					<th>Phone</th>
					<th>Age</th>
					<th>PollCount</th>
					<th>UserType</th>
					<c:forEach items="${users}" var="user">
						<tr>
							<td><a href='<spring:url value="/user/${user.userId}"/>'>${user.username}</a></td>
							<td>${user.userContext.firstName}</td>
							<td>${user.userContext.lastName}</td>
							<td>${user.userContext.email}</td>
							<td>${user.userContext.phone}</td>
							<td>${user.userContext.age}</td>
							<td>${user.pollCount}</td>
							<td>${user.userType}</td>
						</tr>
					</c:forEach>
				</tr>




			</tbody>




		</table>












	</div>
</body>
</html>