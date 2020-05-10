<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create A Film</title>
</head>
<body>
	<h5>Create Your Film</h5>
	<h7>Fill out the below fields.</h7>

	<form action="createFilm.do" method="post">

		Title: <input type="text" name="title" /> Description: <input
			type="text" name="description" /> Release Year: <input type="text"
			name="releaseYear" /> Rental Duration<input type="text"
			name="rentalDuration" /> Rental Rate: <input type="text"
			name="rentalRate" /> Length: <input type="text" name="length"
			value="" /> Replacement Cost: <input type="text"
			name="replacementCost" /> Rating: <input list="text" name="rating" />
		<datalist id='text'>
			<option value="G">
			<option value="PG">
			<option value="PG13">
			<option value="R">
			<option value="NC17">
		</datalist>

		<!-- 		<!-- only works in web browser, not in spring	-->
		Special Features: <input list="text2" name="specialFeatures" />
		<datalist id='text2'>
			<option value="Trailers">
			<option value="Commentaries">
			<option value="Deleted Scenes">
			<option value="Behind the Scenes">
		</datalist>

		<input type="submit" value="Create The Film" />

	 </form>
	<c:choose>
		<c:when test="${checkFilm != null}"> 
	${checkFilm}
  </c:when>
		<c:otherwise>
		Film not submitted
		</c:otherwise>
	</c:choose> 
<a href="home.do">Home</a>

</body>
</html>
