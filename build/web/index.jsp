<%-- 
    Document   : index
    Created on : 27 de abr. de 2023, 14:28:24
    Author     : QI
--%>

<%
    if(session.getAttribute("newUserSession") != null) {
        response.sendRedirect("home.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pets</title>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="icon" href="img/cati.png"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
        <img src="img/animais.jpg" alt="Logotipo" id="animal" width="200"/>
        <form action="LoginController" method="post" id="form-login" class="form-label">    
            <div class="form-floating mb-1">
                <input type="text" name="user" id="floatingInput" id="inputUser" class="form-control" placeholder="Nome de usuário" required>
                <label for="floatingInput">Nome de Usuário</label>
            </div>
            <br>
            
            <div <div class="form-floating mb-1">
            <input type="password" name="pass" id="inputPassword5" class="form-control" placeholder="Senha" required>
            <label for="floatingInput">Senha</label>
            </div>
            <br><br>

            <input type="submit" class="btn btn-primary" value="Entrar">
        </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </body>
</html>
