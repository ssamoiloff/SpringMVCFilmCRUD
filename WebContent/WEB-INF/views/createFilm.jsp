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

	<form action="createFilm.do" method="POST">
		<div class="form-group">
		<label for="title">Title</label><br>
			<input type="text" id="title" name="title" value=""/>
		</div>
		<div class="form-group">
		<label for="desc">Description</label><br>
			<input type="text" id="desc" name="description" value=""/>
		</div>
		<div class="form-group">
		<label for="relYear">Release Year</label><br>
			<input type="text" id="relYear" name="releaseYear" value=""/>
		</div>
		<div class="form-group">
		<label for="rentDur">Rental Duration</label><br>
			<input type="text" id="rentDur" name="rentalDuration" value=""/>
		</div>
		<div class="form-group">
		<label for="rentRate">Rental Rate</label><br>
			<input type="text" id="rentRate" name="rentalRate" value=""/>
		</div>
		<div class="form-group">
		<label for="length">Length</label><br>
			<input type="text" id="length" name="length" value=""/>
		</div>
		<div class="form-group">
		<label for="repCost">Replacement Cost</label><br>
			<input type="text" id="repCost" name="replacementCost" value=""/>
		</div>
		<div class="form-group">
		<label for="rating">Rating</label><br>
		<input list="rating" name="rating" />
			<datalist id='rating'>
				<option value="G">
				<option value="PG">
				<option value="PG13">
				<option value="R">
				<option value="NC17">
			</datalist>
		</div>

		<!-- 		<!-- only works in web browser, not in spring	-->
		<div class="form-group">
		<label for="spFeatList">Special Features</label><br>
			<input list="spFeatList" name="specialFeatures" />
			<datalist id='spFeatList'>
				<option value="Trailers">
				<option value="Commentaries">
				<option value="Deleted Scenes">
				<option value="Behind the Scenes">
			</datalist>
		</div>
		<input type="submit" value="Create The Film" button type="button"
			class="btn btn-primary btn-sm" />
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
