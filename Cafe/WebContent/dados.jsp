 
<%@page import="javax.naming.ldap.Rdn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

    
<html lang="PT-BR">

<head>
  <meta charset="UTF-8">

  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <link href="css/bootstrap.min.css" rel= "stylesheet" type="text/css"/>
  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <link href="css/style2.css" rel = "stylesheet" type="text/css"/>
  <link href="css/personalizado.css" rel = "stylesheet" type="text/css"/>

  <title> cadastro</title>
</head>
 
<body>
 <% // verficar sem tem sessao 
  String  test =(String)  session.getAttribute("nome");

if(test == null){
   response.sendRedirect("login.jsp");
}

 
 



	 
 %>
 <form  action="cliente" method="post">
  <div class="texttopo">
    <h1> Usuário</h1>
  </div>

  <div class="cafe">
    <img src="img/cafe.png" class="rounded mx-auto d-block" alt="200px">
  </div>


<div class="d-flex justify-content-center">
  <div class="cadastroC">
   Nome <input name="nome" type="text" class="form-control" value="<%= session.getAttribute("nome") %>"><br><!-- vai receber o que estiver na sessao como o nome: nome . a sessao e feita la no login.jsp. todas as informacoes do usario forao setadas na sessao  -->
   Email<input name="email" type="email" class="form-control" value="<%= session.getAttribute("email") %>"><br>
   Senha <input name="senha" type="text" class="form-control" value="<%= session.getAttribute("senha") %>"><br>
   CPF <input name="cpf" type="text" class="form-control" value="<%= session.getAttribute("cpf") %>"><br>
    <h5 style="text-align: center;">Endereco</h5>
  </div>
</div> 

<br>

<div class="cidade">
Estado/CEP/Cidade
    <div class="input-group mb-3">
       <input name="estado" type="text" class="form-control"value="<%= session.getAttribute("estado") %>">
       <input name="cpe" type="text" class="form-control" value="<%= session.getAttribute("cep") %>">
       <input name="cidade" type="text" class="form-control" value="<%= session.getAttribute("cidade") %>">
    </div>
Rua/Numero
    <div class="input-group mb-3">
     <input name="rua" type="text" class="form-control"value="<%= session.getAttribute("rua") %>">
     <input name="numero" type="text" class="form-control" value="<%= session.getAttribute("numero") %>"><br>
    </div>
    Bairro/Telefone
    <div class="input-group mb-3">
      <input  name="bairro"type="text" class="form-control"value="<%= session.getAttribute("bairro") %>">
      <input name="telefone" type="text" class="form-control" value="<%= session.getAttribute("telefone") %>">
    </div>

</div>
        


<div class="links">

    <button type="submit" class = "btn btn-login"> Salvar</button> 

  </div>
<br>
</form> <!-- chamar o servilet cliente.java. va para la -->

<script type="text/javascript">
alert("Ao salvar e necessário fazer o login");

</script>

</body>

</html>