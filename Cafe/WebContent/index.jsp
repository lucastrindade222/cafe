<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang= "pt-br">
<head>
    <meta charset="UTF-8"/>
    <title>Pagina Princiapl</title>
    <link href="css/bootstrap.min.css" rel= "stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link href="css/style_index.css" rel = "stylesheet" type="text/css"/>
    <link href="css/personalizado.css" rel = "stylesheet" type="text/css"/>

<body>
 <% 
  String  test =(String)  session.getAttribute("nome"); // isso e uma jpa.esta parte vai ver se a variavel nome não e null 

if(test == null){
   response.sendRedirect("login.jsp");// se for volta pra login.jsp
}


 



	 
 %>
 
    
 
    <div class="d-flex flex-row-reverse">
        <nav class = "p-2">
            <ul>
               <a id = "menu_login"href="dados.jsp"> <li id="b" ><button type="button" class="btn btn-login"><%= session.getAttribute("nome") %></button></li></a>
                <li id="b"><a id = "menu_login"href="sair.jsp">sair</a></li>
            </ul>
        </nav>
    </div>
        <div class="titulo">
            <h1 id="title">CappuChino</h1>
         </div>
        
        <div class="subtitulo">
            <h2>Importadora</h2>
        </div>
    </div>
        
    <div class= "borda-menu"> 
        <nav class ="navmenu">
            <ul>
              <li id="a"><a id="menu_principal" href="historico.jsp">historico</a></li>
                <li id="a"><a id="menu_principal" href="produto.jsp">Produtos</a></li>
                <li id="a"><a id="menu_principal" href="suporte.jsp">Contato</a></li>
            </ul>
        </nav>
    </div>  

        <figure class="d-flex justify-content-center">
            <img src= "img/imgprincipal.jpg" alt ="Maid girl"/>
        </figure>

        <div class = "texto">
            <h3 style = "text-align: center;">
                <p>Bem vindo a maior e melhor exportadora de café do Brasil (se não do mundo),</p>
                trabalhamos com os melhores e mais sofisticados grãos.
            </h3>
        </div>
    
        <div class = "container-rodape">
            <h4 style = "text-align: center; display: fixed;">
             © Todos os direitos reservados.
            </h4>
        </div>
    <!-- aqui não tem mais nada de logico. va para dados.jsp  -->
</body>    
</head>
</html>