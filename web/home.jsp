<%-- 
    Document   : home
    Created on : 27 de abr. de 2023, 14:29:27
    Author     : QI
--%>

<%@include file="session/verify.jsp" %>
<%@page import="model.User"%>
<%   
    User userSession = (User) session.getAttribute("newUserSession");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="htmlh">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pets</title>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="icon" href="img/cati.png"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
        <header id="headh">
            <p>
                Bem vindo <%=
                                    (userSession != null)
                                    ? userSession.getUserName()
                                    : "visitante"
                %>!
                <button type="button" onclick="window.location.href = 'session/logout.jsp'" class="btn btn-dark">Logout</button>
            </p>
        </header>
        <main>
            <img src="img/dog.jpg" alt="alt" id="dogh"/> 
            <div id="dog">
                <button onclick="window.location.href = 'cadastro.jsp'" class="btn btn-primary" id="btn1">Cadastrar</button>
                <button onclick="window.location.href = 'lista.jsp'" class="btn btn-primary" id="btn1">Listar</button>
            </div>
        </main>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </body>
</html>
