<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
  <title>TP3</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
	<form action="/usuario/incluir" method="post">
	
	<h2 class="a">Login</h2>

	<div class="form-group">
      <label>Nome:</label>
      <input type="text" class="form-control" id="email" placeholder="Entre com o seu nome:" name="nome">
    </div>

    <div class="form-group">
      <label>E-mail:</label>
      <input type="email" class="form-control" id="email" placeholder="Entre com o e-mail:" name="email">
    </div>

    <div class="form-group">
      <label>Senha:</label>
      <input type="password" class="form-control" id="senha" placeholder="Entre com a senha:" name="senha">
    </div>

    <button type="submit" class="btn btn-default">Salvar</button>
  </form>

	<c:if test="${not empty usuario}">
	  <p>Listagem de usuários cadastrados:</p>            
	  <table class="table table-striped">
	    <thead>
	      <tr>
	       <th>Nome</th>
	       <th>E-mail</th>
	      </tr>
	    </thead>
	    <tbody>
	    
	    <c:forEach var="u" items="${usuario}">
	      <tr>
	        <td>${u.nome}</td>
	        <td>${u.email}</td>
	        <td><a href="/usuario/${u.id}/excluir">excluir</a></td>
	      </tr>
	    </c:forEach>
	    </tbody>
	  </table>
  </c:if>
  
  <c:if test="${empty usuario}">
  	<p>Nenhum usuário cadastrado!</p>
  </c:if>
</div>

</body>
</html>