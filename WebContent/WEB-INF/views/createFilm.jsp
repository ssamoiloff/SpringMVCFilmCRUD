<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create A Film</title>
</head>
<body>
	<h5>Create Your Film</h5>
	<h7>Fill out the below fields.</h7>
	
	<form action="createFilm.do" method="POST">
			
		Title: <input type="text" name="title" value="" /> 
			
		Description: <input type="text" name="description" value="" /> 
			
		Release Year: <input type="text" name="releaseYear" value="" /> 
			
		Rental Duration<input type="text" name="rentalDuration" value="" /> 
			
		Rental Rate: <input type="text" name="rentalRate" value="" /> 
			
		Length: <input type="text" name="length" value="" /> 
			
		Replacement Cost: <input type="text" name="replacementCost" value="" /> 
			
		Rating: <input type="text" name="rating" value="" /> 
			
		Special Features: <input type="text" name="specialFeatures" value="" />
		
		 <input type="submit"
			value="Create The Film"/>
									
	</form>
	${film}
</body>
</html>

<!-- 
		this.id = id;
		this.title = title;
		this.description = description;
		this.releaseYear = releaseYear;
		this.languageId = languageId;
		this.rentalDuration = rentalDuration;
		this.rentalRate = rentalRate;
		this.length = length;
		this.replacementCost = replacementCost;
		this.rating = rating;
		this.specialFeatures = specialFeatures; -->