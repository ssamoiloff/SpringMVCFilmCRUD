<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Film by ID</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
</head>
<body>
	<h5>Enter Film ID</h5>
	<form action="getFilmById.do" method="GET">
		<input type="text" name="filmId" value="" /> 
		<input type="submit" value="Search Film" button type="button"
			class="btn btn-primary btn-sm"/>
	</form>
	<br>
	<br>
	<c:choose>
		<c:when test="${film != null}">
			<form action="deleteFilm.do" method="POST">
			<strong><em>${film.title}</em></strong>
				<input type="hidden" name="id" value="${film.id}"/>
				<table>
					<thead>
						<tr>
							<td>---CAST---</td>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="f" items="${film.actors}">
						<tr>
							<td>${f.firstName} ${f.lastName}</td>
						</tr>
					</c:forEach>
						<tr>
							<td>---CATEGORY---</td>
						</tr>
						<tr>
							<td>${film.category}</td>
						</tr>
					</tbody>
				</table>
				<br>
				<br>
				<input type="submit" button type="button" value="Delete" class="btn btn-outline-primary"/>
			</form>
			
			<form action="updateFilm.do" method="POST" >
				<div>
				<input type="hidden" name="id" id="filmId" value="${film.id}"/><br><br>
				</div>
				<div class="form-group">
				<label for="title">Title</label><br>
				<input type="text" name="title" id="title" value="${film.title}"/><br><br>
				</div>
				<div class="form-group">
				<label for="desc">Description</label><br>
				<input type="text" name="description" id="desc" value="${film.description}"/><br><br>
				<label for="description">Description</label><br>
				<input type="text" name="description" id="description" value="${film.description}"/><br><br>
				</div>
				<div class="form-group">
				<label for="relYear">Release Year</label><br>
				<input type="text" name="release year" id="relYear" value="${film.releaseYear}"/><br><br>
				<label for="releaseYeah">Release Year</label><br>
				<input type="text" name="releaseYear" id="releaseYear" value="${film.releaseYear}"/><br><br>
				</div>
				<div class="form-group">
				<label for="rentDur">Rental Duration</label><br>
				<input type="text" name="rental duration" id="rentDur" value="${film.rentalDuration}"/><br><br>
				<label for="rentalDuration">Rental Duration</label><br>
				<input type="text" name="rentalDuration" id="rentalDuration" value="${film.rentalDuration}"/><br><br>
				</div>
				<div class="form-group">
				<label for="rentRate">Rental Rate</label><br>
				<input type="text" name="rental rate" id="rentRate" value="${film.title}"/><br><br>
				<label for="rentalRate">Rental Rate</label><br>
				<input type="text" name="rentalRate" id="rentalRate" value="${film.rentalRate}"/><br><br>
				</div>
				<div class="form-group">
				<label for="length">Length</label><br>
				<input type="text" name="length" id="length" value="${film.length}"/><br><br>
				</div>
				<div class="form-group">
				<label for="repCost">Replacement Cost</label><br>
				<input type="text" name="replacement cost" id="repCost" value="${film.replacementCost}"/><br><br>
				<label for="replacementCost">Replacement Cost</label><br>
				<input type="text" name="replacementCost" id="replacementCost" value="${film.replacementCost}"/><br><br>
				</div>
				<div class="form-group">
				<label for="rating">Rating</label><br>
@@ -95,8 +95,8 @@
				</div>
				<div class="form-group">
				<label for="spFeat">Special Features</label><br>
				<input list="spFeatList" name="specialFeatures" value="${film.specialFeatures}"/>
					<datalist id='spFeatList'>
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
		</c:when>
		<c:when test="${filmNull == true}">
			<div class="alert alert-danger" role="alert">Film not found</div>
		</c:when>
		<c:otherwise></c:otherwise>
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