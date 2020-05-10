<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create A Film</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
</head>
<body>
	<h5>Create Your Film</h5>
	<h7>Fill out the below fields.</h7>

	<form action="createFilm.do" method="post">
		<div class="form-group">
			Title: <input type="text" name="title" />
		</div>
		<div class="form-group">
			Description: <input type="text" name="description" />
		</div>
		<div class="form-group">
			Release Year: <input type="text" name="releaseYear" />
		</div>
		<div class="form-group">
			Rental Duration<input type="text" name="rentalDuration" />
		</div>
		<div class="form-group">
			Rental Rate: <input type="text" name="rentalRate" />
		</div>
		<div class="form-group">
			Length: <input type="text" name="length" value="" />
		</div>
		<div class="form-group">
			Replacement Cost: <input type="text" name="replacementCost" />
		</div>
		<div class="form-group">
			Rating: <input list="text" name="rating" />
			<datalist id='text'>
				<option value="G">
				<option value="PG">
				<option value="PG13">
				<option value="R">
				<option value="NC17">
			</datalist>
		</div>


		<!-- 		<!-- only works in web browser, not in spring	-->
		<div class="form-group">
			Special Features: <input list="text2" name="specialFeatures" />
			<datalist id='text2'>
				<option value="Trailers">
				<option value="Commentaries">
				<option value="Deleted Scenes">
				<option value="Behind the Scenes">
			</datalist>
		</div>

		<input type="submit" value="Create The Film" button type="button"
			class="btn btn-primary btn-sm" />

	</form>
	<c:choose>
		<c:when test="${checkFilm != null}">
			<div class="alert alert-success" role="alert">${checkFilm}</div>
		</c:when>
		<c:otherwise>
			<div class="alert alert-danger" role="alert">Film not submitted</div>
		</c:otherwise>
	</c:choose>
	<a href="home.do" button type="button" class="btn btn-outline-primary">Home</a>


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
