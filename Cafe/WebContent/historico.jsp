<%@page import="java.sql.Connection"%>
 <%@page import= "java.io.IOException"%>
<%@page import ="java.sql.Connection"%>
<%@page import= "java.sql.DriverManager"%>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.SQLException"%>
<%@page import= "javax.servlet.http.HttpSession"%>
<%@page import= "java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
     <link href="css/bootstrap.min.css" rel= "stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link href="css/style_index.css" rel = "stylesheet" type="text/css"/>
    <link href="css/personalizado.css" rel = "stylesheet" type="text/css"/>
  
<title>Insert title here</title>
</head>
<body>

 <div class="d-flex flex-row-reverse">
        <nav class = "p-2">
            <ul>
               <a id = "menu_login"href="dados.jsp"> <li id="b" ><button type="button" class="btn btn-login"><%= session.getAttribute("nome") %></button></li></a>
                <li id="b"><a id = "menu_login"href="sair.jsp">sair</a></li>
            </ul>
        </nav>
    </div>
        <div class="titulo">
         <h1 id="title">CappuChino</h1></a>
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


 

 <div class = "texto">
            <h3 style = "text-align: center;">
                <p> O produto só podera ser cancelado caso a sua compra não foi processada pelo nosso setor de entrega.</p>
            </h3>
        </div>
 

 <div class = "d-flex justify-content-center">

 <table class="table table-dark">

   
 
 
  <thead style="background-color: rgb(97, 65, 45);" >
  
     <tr>
      <th >Valor</th>
      <th>Codigo da compra</th>
        <th>resumo da compra</th>
    </tr>
  </thead>
 
  
<thead  style="background-color: rgba(97, 65, 45,0.8);">
    
 
 <%// aqui a jpa vai pegar todas as compras que tiver no banco com o cpf do igual ao do clente o. cpf esta na sessao 
    ResultSet rs;
    String userneme="root";
	String pwd="";
	String ConnUr1 =  "jdbc:mysql://localhost:3306/cafe?useSSL=false&serverTimezone=UTC";
	 
	
		
		String cpf= (String) session.getAttribute("cpf");
		
		String sql = "SELECT * FROM compras where CPF_usario=?;"; 
		 
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection	conexao = DriverManager.getConnection(ConnUr1, userneme, pwd);
		
  	PreparedStatement ps = conexao.prepareStatement(sql);
  	
   ps.setString(1,cpf);
  	
   rs = ps.executeQuery();
   while (rs.next()) {// aqui ele vai colocar no campo da tabela os valores do banco . isso e igual a pegar uma variavel do banco, so que aqui ele nao armazena so mostra. ele esta no banco.    
 
 %>
  <tr>
  <td>
   <%= rs.getString("Nome") %>
   </td>
   
    <td>
   <%= rs.getString("Numero") %>
  </td>
  <td>
   <%= rs.getString("Resuno") %>
   <a href="Delete.jsp?codigo=<%= rs.getString("Numero")  %>" class = "btn btn-danger">Cancelar</a>
  </td>
 
 </tr>
 
 
   <%
   } 
   %>
   
 </thead>

 </table>

<!-- duvidas e so chamar -->
 </div>

<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

</body>
</html>