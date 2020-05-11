<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Return Films</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
	
		<c:forEach var="f" items="${film}">
			<form action="deleteFilm.do" method="POST">
				<strong><em>${f.title}</em></strong> <input type="hidden" name="id"
					value="${f.id}" /> <br> <br> <input type="submit" button
					type="button" id="returnFilmDelete" value="Delete"
					class="btn btn-outline-primary" />
			</form>
	
	
		<form action="updateFilmPage.do" method="POST">

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
			<input type="hidden" name="id" id="filmId" value="${f.id}" /> <input
				type="hidden" name="title" id="title" value="${f.title}" /> <input
				type="hidden" name="description" id="description"
				value="${f.description}" /> <input type="hidden" name="releaseYear"
				id="releaseYear" value="${f.releaseYear}" /> <input type="hidden"
				name="languageId" id="languageId" value="${f.languageId}" /> <input
				type="hidden" name="rentalDuration" id="rentalDuration"
				value="${f.rentalDuration}" /> <input type="hidden"
				name="rentalRate" id="rentalRate" value="${f.rentalRate}" /> <input
				type="hidden" name="length" id="length" value="${f.length}" /> <input
				type="hidden" name="replacementCost" id="replacementCost"
				value="${f.replacementCost}" /> <input type="hidden" name="rating"
				id="rating" value="${f.rating}" /> <input type="hidden"
				name="specialFeatures" id="specialFeatures"
				value="${f.specialFeatures}" /> <input type="submit" value="Update"
				name="update" button type="button" class="btn btn-primary btn-sm" />

		</form>
		</c:forEach>
	

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>