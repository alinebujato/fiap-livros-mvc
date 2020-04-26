<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Editar livro</title>
	
	<spring:url value="/resources/css" var="css"/>
    <spring:url value="/resources/js" var="js"/>
    
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
					
					<form:form action="${contextPath}/livro/${livro.id}" method="put">
					
						<div class="form-group">
							<input type="hidden" name="id" id="id" value="${livro.id}" />
                        </div>
						
						<div class="form-group">
							<label class="control-label" for="nome">Título:</label>
							<input type="text" name="titulo" id="titulo" value="${produto.titulo}" class="form-control" maxlength="50" size="50" />
                        </div>
                        
                        <div class="form-group">
							<label class="control-label" for="nome">SKU:</label>
							<input type="text" name="sku" id="sku" value="${livro.sku}" class="form-control" maxlength="50" size="50" />
						</div>
						
						<div class="form-group">
							<label class="control-label" for="mesnagem">Sinopse:</label>
							<textarea id="sinopse" class="form-control" name="sinopse" rows="4" cols="100">${produto.sinopse}</textarea>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="nome">Editora:</label>
							<input type="text" name="editora" id="editora" value="${livro.editora}" class="form-control" maxlength="50" size="50" />
						</div>
						
						<div class="form-group">
							<label class="control-label" for="preco">Preço:</label>
							<input type="text" name="preco" id="preco" value="${livro.preco}" class="form-control" maxlength="14" size="15" />
						</div>
						
						<div class="form-group">
							<label class="control-label" for="nome">ISBN:</label>
							<input type="text" name="isbn" id="isbn" value="${livro.isbn}" class="form-control" maxlength="14" size="15" />
						</div>
						
						<hr>
						
						<a class="btn btn-default btn-lg" href="${contextPath}/livro">Cancelar</a>
						<button type="submit" class="btn btn-primary btn-lg">Gravar</button>
                            
                        <br>
                        <br>
					</form:form>
					
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>