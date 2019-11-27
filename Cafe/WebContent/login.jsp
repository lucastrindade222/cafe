<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html>
<html lang="PT-BR">
<head>
  <meta charset="UTF-8">

  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="css/style2.css">
  <link href="css/personalizado.css" rel = "stylesheet" type="text/css"/>
  
  <title> login</title>
</head>
<body>

  <div class="texttopo">
    <h1> Login </h1>
  </div>

  <div class="cafe">
    <img src="img/cafe.png" class="rounded mx-auto d-block" alt="200px">
  </div>


 <form    action="login" method="post"><!-- mesma coisa do cadastro -->
  <div class = "d-flex justify-content-center">
    <div class="b">
     <input name="email" type="text" class="form-control" placeholder="Seu email"><br>
     <input name="senha" type="password" class="form-control" placeholder="Senha">
       
    </div>
  </div>


    <div class = "d-flex justify-content-center">
      <button class="btn btn-login" type="submit">Entrar</button>
    </div>
</form><!-- agora vc vai para login.java -->

  
  <div class="d-flex justify-content-center">
    <nav>
      <ul>
        <li id="decoration"><a id ="hyper-text" href ="esquecieasenha.jsp">Esqueci a senha</a></li>
        <li id="decoration"><a id ="hyper-text" href ="Cadastro.jsp">Nao tenho conta</a></li>
      </ul>
    </nav>
  </div>

 
 <style type="text/javascript"src="js/bootstrap.bundle.min.js" ></style>
 <style type="text/javascript"src="jquery-3.4.1.min.js" ></style>
</body>

</html>

  
 