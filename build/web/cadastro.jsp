<%-- 
    Document   : cadastro
    Created on : 4 de mai. de 2023, 15:09:36
    Author     : QI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pets</title>
        <link rel="icon" href="img/cati.png"/>
        <link rel="stylesheet" href="css/style.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
        <img src="img/lista.jpg" id="imgc" alt="alt"/>
        <h1 id="h1c">O que gostaria de adotar?</h1>
        <hr>
        <form action="PetController" method="post" id="form1">
            
            <select name="animal" required>
                <option value="">Selecione um pet!</option>
                <option value="Gato">Gato</option>
                <option value="Cachorro">Cachorro</option>
                <option value="Ave">Ave</option>
                <option value="Roedor">Roedor</option>
            </select>
            
            
            <br><br>
            <input type="text" name="raca" placeholder="Raça desejada?" required id="iz1">
            <br><br>
            
                       
   
            <br><br>
            <input type="submit" class="btn btn-primary" value="Cadastrar" id="iz1">
            
        </form>
        
        <br><hr>
        <a href="home.jsp"><button class="btn btn-primary" id="btnc">Página Incial</button></a>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </body>
</html>
