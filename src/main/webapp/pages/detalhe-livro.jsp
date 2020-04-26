<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>

	<meta charset="ISO-8859-1">
	<title>Detalhe livro</title>
	
	<spring:url value="/resources/css" var="css"/>
    <spring:url value="/sresources/js" var="js"/>
    
    <c:set value="${pageContext.request.contextPath}" var="contextPath"/>
    
    <link href="${css}/bootstrap.css" rel="stylesheet">
    <link href="${css}/small-business.css" rel="stylesheet">

</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="${contextPath}/livro">Livros</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="well">
					
					<h2>Livro</h2>
					
						<div class="form-group">
							<label class="control-label" for="titulo">Título:</label>
							<b>${livro.titulo}</b>
                        </div>
                        
                        <div class="form-group">
							<label class="control-label" for="editora">Editora:</label>
							<label class="label label-default">${livro.editora}</label>
						</div>
                        
                        <div class="form-group">
							<label class="control-label" for="sku">SKU:</label>
							<label class="label label-default">${livro.sku}</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="sinopse">Sinopse:</label>
							<label class="label label-default">${livro.sinopse}</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="preco">Preço:</label>
							<label class="label label-default">${livro.preco}</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="isbn">ISBN:</label>
							<label class="label label-default">${livro.isbn}</label>
						</div>
						<hr>
						
						<a class="btn btn-default btn-lg" href="${contextPath}/livros">Voltar</a>
					
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>