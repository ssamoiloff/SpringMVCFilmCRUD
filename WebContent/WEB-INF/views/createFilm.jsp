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
	
	<form action="createFilm.do" method="post">
			
		Title: <input type="text" name="title"/> 
			
		Description: <input type="text" name="description"/> 
			
		Release Year: <input type="text" name="releaseYear"/> 
			
		Rental Duration<input type="text" name="rentalDuration"/> 
			
		Rental Rate: <input type="text" name="rentalRate" /> 
			
		Length: <input type="text" name="length" value="" /> 
			
		Replacement Cost: <input type="text" name="replacementCost"/> 
			
		Rating: <input type="text" name="rating" value="" /> 
			
		Special Features: <input list="text" name="specialFeatures"/>
		<datalist id = 'text'>
               <option value = "Trailers">Trailers</option>
               <option value = "Commentaries">Commentaries</option>
               <option value = "Deleted Scenes">Deleted Scenes</option>
               <option value = "Behind the Scenes">Behind The Scenes</option>
               </datalist>
 
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