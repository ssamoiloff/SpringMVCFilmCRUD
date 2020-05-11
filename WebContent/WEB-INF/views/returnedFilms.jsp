<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Return Films</title>
</head>
<body>
	<c:forEach var="f" items="${film}">
		<p>
		<table>
			<tr>
				<td>Title: ${f.title}</td>
			</tr>
			<tr>
				<td>Description: ${f.description}</td>
			</tr>
			<tr>
				<td>Release Year: ${f.releaseYear}</td>
			</tr>
			<tr>
				<td>Rental Duration: ${f.rentalDuration}</td>
			</tr>
			<tr>
				<td>Rental Rate: ${f.rentalRate}</td>
			</tr>
			<tr>
				<td>Length: ${f.length}</td>
			</tr>
			<tr>
				<td>Replacement Cost: ${f.replacementCost}</td>
			</tr>
			<tr>
				<td>Rating: ${f.rating}</td>
			</tr>
			<tr>
				<td>Special Features: ${f.specialFeatures}</td>
			</tr>
		</table>
		</p>
	</c:forEach>
</body>
</html>