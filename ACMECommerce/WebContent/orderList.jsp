<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<link href="css/home.css" rel="stylesheet">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Ordini cliente</title>
</head>
<body>
<f:view>
	<h2>I tuoi Ordini:</h2>
	<h:form>
		<table>
			<tr>
				<th>Id Ordine</th>
				<th>Creato il</th>
			</tr>
			<c:forEach var="order" items="#{customerSessionManager.orders}">
				<tr>
					<td>${order.id}</td>
					<td>${order.creationDate}</td>
				</tr>
			</c:forEach>
		</table>
	</h:form>
</f:view>
</body>
</html>