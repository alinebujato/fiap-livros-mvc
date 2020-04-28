<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>

	<meta charset="ISO-8859-1">
	<title>Detalhes livro</title>
	
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
                       <a class="nav navbar-nav" href="${contextPath}/livro">Home</a>
                   </li>
               </ul>
           </div>
       </div>
   </nav>
    
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="well well-lg">
					
					<h2 class="text-center text-info ">${livro.titulo}</h2>
					
					<table class="table table-striped table-bordered" cellspacing="0" cellpadding="0">
					<thead>
						<tr>
							<th class="text-center" data-field="name">Editora</th>
							<th class="text-center" data-field="name">Sinopse</th>
							<th class="text-center" data-field="forks_count">Preço</th>
							<th class="text-center" data-field="name">SKU</th>
							<th class="text-center" data-field="name">ISBN</th>
						</tr>
					</thead>
					<tbody>
							<tr>
								<td class="text-center">${livro.editora}</td>
								<td class="text-center">${livro.sinopse}</td>
								<td class="text-center">${livro.preco}</td>
								<td class="text-center">${livro.sku}</td>
								<td class="text-center">${livro.isbn}</td>
							</tr>
                    </tbody>
				</table>
						
				<a class="btn btn-default btn-lg" href="${contextPath}/livro">Voltar</a>
					
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>