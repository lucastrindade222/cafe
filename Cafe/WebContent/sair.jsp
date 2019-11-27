<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
// eu pegei um jsp e so ultizei so o jpa  
session.invalidate();// vai fecha sessao 
response.sendRedirect("login.jsp");%>><!--  vai redirecionar para login.jsp . va para produtos.jsp --> 
</body>
</html>