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

  <title> Carrinho</title>
</head>
 
<body>
 <% 
  String  test =(String)  session.getAttribute("nome");

if(test == null){
   response.sendRedirect("login.jsp");
}
 
 %>

 
  <div class="texttopo">
    <h1> Carrinho</h1>
  </div>

  <div class="cafe">
    <img src="img/cafe.png" class="rounded mx-auto d-block" alt="200px">
  </div>


<div class="d-flex justify-content-center">
  <div class="cadastroC">
   Java-East Indian <input name="A" type="text" class="form-control" value="<%= session.getAttribute("custofimA") %>"><br>
   Mocha<input  type="text" class="form-control" value="<%= session.getAttribute("custofimB") %>"><br><!-- vai pegar o valor que foi colocado na sessao la no  produto.java -->
   Santos <input  type="text" class="form-control" value="<%= session.getAttribute("custofimC") %>"><br>
   maracaibo <input   type="text" class="form-control" value="<%= session.getAttribute("custofimD") %>"><br>
    <h5 style="text-align: center;">Total|CPF</h5>
  </div>
</div> 

<br>
 <form    action="conpra" method="post">
<div class="cidade">
 
    <div class="input-group mb-3">
       <input name="total" type="text" class="form-control"value="<%= session.getAttribute("custofimT") %>">
       <input name="cpf" type="text" class="form-control" value="<%= session.getAttribute("cpf") %>"><br>
    </div>

</div>


<div class="links">

   <a href="sair.jsp"><button type="submit" class = "btn btn-login"> Compra</button> </a> 

  </div>
<br>
</form><!-- va para conpra.java -->




</body>

</html>