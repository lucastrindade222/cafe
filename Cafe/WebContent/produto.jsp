<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="PT-BR">
<head>
    <title>Catálogo</title>
    <meta charset="UTF-8"/>
    <link href="css/bootstrap.min.css" rel= "stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link href="css/style_catalogo.css" rel = "stylesheet" type="text/css"/>
    <link href="css/personalizado.css" rel = "stylesheet" type="text/css"/>
</head>
<body>
<% 
  String  test =(String)  session.getAttribute("nome");

if(test == null){
   response.sendRedirect("login.jsp");
}
 
 %>



    <div class = "titutlo">
        <h1 id="title">CappuChino</h1>
    </div>
        
    <div class = "subtitulo">
        <h2 id = "subtitulo">Importadora</h2>
    </div>

    <div class= "borda-menu"> 
            <nav class ="navmenu">
                <ul>
                    <li id="a"><a id="menu_principal" href="index.jsp">Pagina Principal</a></li>
                    <li id="a"><a id="menu_principal" href="suporte.jsp">Contato</a></li>
                </ul>
            </nav>
        </div>  
    
    <form    action="produto" method="post">
    <div>
        <h1>
            Produtos
        </h1>
    </div>

    <div class = "container">
        <ul class = "lista-imagem">
            <li>
                <div class = "container-image">
                    <img src ="img/cafe_tipo1.jpg" alt = "tipo1">
                    <div class = "image-information">
                    
                      1x
                     <input name="a1" value="true " type="radio"> <!-- aqui e um botao que tem um valor true. aqui e a parte para vc escolher o que vc quer para comprar-->
                      2x
                     <input name="a2" value="true" type="radio">  
                      3x
                     <input name="a3" value="true" type="radio"> 
                      4x
                     <input name="a4" value="true" type="radio"> 
                    </div>
                </div>
            </li>
           
            <li>
                <div class = "container-image">
                    <img src ="img/cafe_tipo2.jpg" alt = "tipo2">
                    <div class = "image-information">
                            1x
                     <input name="b1" value="true" type="radio">
                      2x
                     <input name="b2" value="true" type="radio">  
                      3x
                     <input name="b3" value="true" type="radio"> 
                      4x
                     <input name="b4" value="true" type="radio"> 
                    </div>
            </div>
            </li>
            
            <li>
                <div class = "container-image">
                    <img src ="img/cafe_tipo3.jpg" alt = "tipo3">
                    <div class = "image-information">
                     1x
                     <input name="c1" value="true" type="radio">
                      2x
                     <input name="c2" value="true" type="radio">  
                      3x
                     <input name="c3" value="true" type="radio"> 
                      4x
                     <input name="c4" value="true" type="radio">     
                    </div>
                </div>
            </li>  
       
            <li>
                <div class = "container-image">
                    <img src ="img/cafe_tipo4.jpg" alt = "tipo4">
                    <div class = "image-information">
                     
                      1x
                     <input name="d1" value="true" type="radio">
                      2x
                     <input name="d2" value="true" type="radio">  
                      3x
                     <input name="d3" value="true" type="radio"> 
                      4x
                     <input name="d4" value="true" type="radio">     
                       
                        
                    </div>
                </div>
            </li>   
            
            

                         
            
        </ul>
    </div>
                <!-- agora va pra produto.java -->
   
<div class = "d-flex justify-content-center">
    <div class="b">
    
  <input   type="text" class="form-control" value="R$:<%= request.getAttribute("total")%>"><br>
 </div>
  </div>
   <div class = "d-flex justify-content-center">
      <button class="btn btn-login" type="submit">calcular</button>&nbsp&nbsp
      <button class="btn btn-login" name="sim" value="true" type="submit">Compra</button>
    </div>
  
    </form>
    <div class = "d-flex justify-content-center">
            <h4>
             © Todos os direitos reservados.
            </h4>
        </div>
    

</body>