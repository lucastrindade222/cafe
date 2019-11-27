<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8"/>
	<title>Fale Conosco</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="css/fale-conosco.css"/>
	<link href="css/personalizado.css" rel = "stylesheet" type="text/css"/>
</head>
<body>
<% 
  String  test =(String)  session.getAttribute("nome");

if(test == null){
   response.sendRedirect("login.jsp");
}
 
 %>



	<div>
		<div class = "d-flex flex-row-reverse">
        	<nav class = "p-2">
        		<ul>
            		<a id = "menu_login"href="dados.jsp"> <li id="b" ><button type="button" class="btn btn-login"><%= session.getAttribute("nome") %></button></li></a>
                 <li id="b"><a id = "menu_login"href="sair.jsp">sair</a></li>
        		</ul>
        	</nav>
    	</div>
		<div>
    		<div class="titulo2">
        		<h1>CappuChino</h1>
			</div>
			
			<div class="subtitulo">
					<h2 style="text-align: center; margin: 28px; padding-bottom: 12px ;" >Importadora</h2>
			</div>
			
    		<div class= "borda-menu"> 
        		<nav class ="menu">
       				<ul>
            			<li id ="a"><a href="index.jsp">Pagina Principal</a></li>
            			<li id ="a"><a href="produto.jsp">Produtos</a></li>
        			</ul>
        		</nav>
    		</div> 
			<div id="bloco">
				<section id="corpo">
					<div id="titulo">
						<h1>Dúvidas Frequentes</h1>
					</div>
					<h2> Qual a forma de envio ?</h2>
					<p>Jatinho particular</p>
					<h2> Enviam para outro pais ?</h2>
					<p>Enviamos até para o inferno</p>
				</section>
				<aside id="lateral">
					<div id="titulo">
						<h1>Fale com a gente</h1>
					</div>
				<p>Gostaria de fazer sugestões, reclamações, ou solicitações? Entre em contato conosco pelo nosso whatsapp: <br/> (81) 9 9699-6924</p>
				</aside>
				<footer id="rodape">
            		<h4 style = "text-align: center; display: fixed;">
						</a><br/>© Todos os direitos reservados.
            		</h4>
				</footer>
			</div>
		</div>
	</div>
</body>
</html>