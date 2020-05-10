<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search By ID</title>
</head>
<body>
	<h5>Enter film ID</h5>
	<form action="getFilmById.do" method="GET">
		<input type="text" name="filmId" value="" /> <input type="submit"
			value="Search Film" />
	</form>
	${film}
	
	<a href="home.do">Home</a>
</body>
</html>