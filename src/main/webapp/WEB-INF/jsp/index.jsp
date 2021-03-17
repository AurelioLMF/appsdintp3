<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App TP3</title>
</head>
<title>TP3</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  </head>
<body>

	<div class="container">
		
		<h2>TP3</h2>
		<h3>${nome}</h3>
		<h4>${email}</h4>
		
		<p>GIT: <a href="${git}">link</a></p>
	
		<form action="/usuario" method="get">
			<button type="submit" class="btn btn-default">Novo Usuário</button>
		</form>
	</div>
</body>
</html>