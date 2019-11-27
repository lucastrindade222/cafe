<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
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
 
  <form  action="Registration" method="post"> <!-- Esta parte vai chamar o servilete com o nome Registration  -->
 
 
  <div class="texttopo">
    <h1> Cadastro </h1>
  </div>

  <div class="cafe">
    <img src="img/cafe.png" class="rounded mx-auto d-block" alt="200px">
  </div>


<div class="d-flex justify-content-center">
  <div class="cadastroC">
    <input name="nome" type="text" class="form-control" placeholder="Nome"><br> <!-- o name e para dar um nome ao local que vc quer pegar la no servilet   -->
    <input name="email" type="email" class="form-control" placeholder="Seu email"><br>
    <input name="senha"type="text" class="form-control" placeholder="Senha"><br>
    <input name="cpf" type="text" class="form-control" placeholder="CPF"><br>
    <h5 style="text-align: center;">Endereco</h5>
  </div>
</div> 

<br>

<div class="cidade">

    <div class="input-group mb-3">
      <input name="estado" type="text" class="form-control" placeholder="Estado">
      <input name="cpe" type="text" class="form-control" placeholder="CEP">
      <input name="cidade" type="text" class="form-control" placeholder="Cidade">
    </div>

    <div class="input-group mb-3">
      <input name="rua" type="text" class="form-control" placeholder="Rua ">
      <input name="numero" type="text" class="form-control" placeholder="Numero "><br>
    </div>
    
    <div class="input-group mb-3">
      <input name="bairro" type="text" class="form-control" placeholder="Bairro">
      <input name="telefone" type="text" class="form-control" placeholder="Telefone">
    </div>

</div>


<div class="links">

    <button type="submit" class = "btn btn-login"> Cadastrar</button> <!-- o button tem que ser do type submit para ele poder submet todo que esta no form  -->

  </div>

</form> <!-- fim do form. agora vc vai no servilet Registration.java. ele esta no pacote jdbc  -->

</body>

</html>