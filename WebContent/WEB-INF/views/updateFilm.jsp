<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Film</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
</head>
<body>			
			<form action="updateFilm.do" method="POST" >
				<div>
				<input type="hidden" name="id" id="filmId" value="${film.id}"/><br><br>
				</div>
				<div class="form-group">
				<label for="title">Title</label><br>
				<input type="text" name="title" id="title" value="${film.title}"/><br><br>
				</div>
				<div class="form-group">
				<label for="description">Description</label><br>
				<input type="text" name="description" id="description" value="${film.description}"/><br><br>
				</div>
				<div class="form-group">
				<label for="release year">Release Year</label><br>
				<input type="text" name="releaseYear" id="releaseYear" value="${film.releaseYear}"/><br><br>
				</div>
				<div class="form-group">
				<label for="rental duration">Rental Duration</label><br>
				<input type="text" name="rentalDuration" id="rentalDuration" value="${film.rentalDuration}"/><br><br>
				</div>
				<div class="form-group">
				<label for="rental rate">Rental Rate</label><br>
				<input type="text" name="rentalRate" id="rentalRate" value="${film.rentalRate}"/><br><br>
				</div>
				<div class="form-group">
				<label for="length">Length</label><br>
				<input type="text" name="length" id="length" value="${film.length}"/><br><br>
				</div>
				<div class="form-group">
				<label for="replacement cost">Replacement Cost</label><br>
				<input type="text" name="replacementCost" id="replacementCost" value="${film.replacementCost}"/><br><br>
				</div>
				<div class="form-group">
				<label for="rating">Rating</label><br>
				<input list="rating" name="rating" value="${film.rating}"/>
					<datalist id='rating'>
						<option value="G">
						<option value="PG">
						<option value="PG13">
						<option value="R">
						<option value="NC17">
					</datalist><br><br>
				</div>
				<div class="form-group">
				<label for="specialFeatures">Special Features</label><br>
				<input list="specialFeaturesList" name="specialFeatures" value="${film.specialFeatures}"/>
					<datalist id='specialFeaturesList'>
						<option value="Trailers">
						<option value="Commentaries">
						<option value="Deleted Scenes">
						<option value="Behind the Scenes">
					</datalist>
				</div><br><br>
			<input type="submit" button type="button" value="Update" class="btn btn-outline-primary"/>
			</form>
			
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