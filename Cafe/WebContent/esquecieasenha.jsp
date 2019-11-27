<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="PT-BR">
<head>
    <title>Recuperar senha</title>
    <meta charset="UTF-8"/>
    <link href="css/bootstrap.min.css" rel= "stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link href="css/style_esqueci_senha.css" rel = "stylesheet" type="text/css"/>
    <link href="css/personalizado.css" rel = "stylesheet" type="text/css"/>
</head>
<body>

    <div>
        <h1 id="title">CappuChino</h1>
    </div>
        
    <div class = "subtitulo">
        <h2 id = "subtitulo">Importadora</h2>
    </div>

    <div class="recuperacao"> 
        <h3 id = "text_rec">Recuperação de senha</h3>
    </div>
 <form    action="recuperasenha" method="post">
    <div class="d-flex justify-content-center">
        <div class = "form_email_recuperacao">
            <input name="email" id="a" type = "email" class = "form-control" placeholder="Seu Email">
        </div>
    </div>

    <div class="d-flex justify-content-center">
        <button class="btn btn-login" type="submit">Recuperar</button>
    </div>
    </form>
 



</body>
</html>
