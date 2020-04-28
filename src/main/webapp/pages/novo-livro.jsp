<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Cadastrar livro</title>
	
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
                       <a class="nav navbar-nav" href="${contextPath}/livro">Home</a>
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
					
					<form:form modelAttribute="livroModel" action="${contextPath}/livro" method="post">
					
						<div class="form-group">
							<label class="control-label" for="nome">Título:</label>
							<form:input type="text" path="titulo" id="titulo" value="" class="form-control" maxlength="50" size="50" />
							<font color="red">
								<form:errors path="titulo" />
							</font><br/>
                        </div>
                        
                        <div class="form-group">
							<label class="control-label" for="nome">SKU:</label>
							<form:input type="text" id="sku" path="sku" value="" class="form-control" maxlength="50" size="50" />
							<font color="red">
								<form:errors path="sku" />
							</font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="nome">Editora:</label>
							<form:input type="text" id="editora" path="editora" value="" class="form-control" maxlength="50" size="50" />
							<font color="red">
								<form:errors path="editora" />
							</font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="sinopse">Sinopse:</label>
							<form:textarea class="form-control" path="sinopse" rows="4" cols="100"></form:textarea>
							<font color="red">
								<form:errors path="sinopse" />							
							</font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="preco">Preço:</label>
							<form:input type="text" id="preco" path="preco" class="form-control" />
							<font color="red">
								<form:errors path="preco" />
							</font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="isbn">ISBN:</label>
							<form:input type="text" id="isbn" path="isbn" class="form-control" />
							<font color="red">
								<form:errors path="isbn" />
							</font><br/>
						</div>
						
						<hr>
						
						<a class="btn btn-default btn-lg" href="${contextPath}/livro">Cancelar</a>
						<button type="submit" class="btn btn-success btn-lg">Gravar</button>
                            
                        <br>
					</form:form>
					
					
                </div>
            </div>
        </div>
    </div>

</body>
</html>