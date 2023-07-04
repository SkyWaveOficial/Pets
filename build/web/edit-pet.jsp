<%-- 
    Document   : cadastro
    Created on : 4 de mai. de 2023, 15:09:36
    Author     : QI
--%>

<%@page import="model.Pet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Pet pet = (Pet)request.getAttribute("pet");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pets</title>
        <link rel="icon" href="img/cati.png"/>
    </head>
    <body>
        <h1>Editar</h1>
        <hr>
        
        <form action="PetController" method="post" id="form">
            <input type="text" name="id" value="<%= pet.getId() %>" readonly>
            <br><br>
                                    
            <select name="animal" required>
                <option value="<%= pet.getAnimal()%>"><%= pet.getAnimal()%></option>
                <option value="Gato">Gato</option>
                <option value="Cachorro">Cachorro</option>
                <option value="Ave">Ave</option>
                <option value="Roedor">Roedor</option>
            </select>
            
            <br><br>
            <input type="text" name="raca" value="<%= pet.getRaca() %>" placeholder="Tipo de pet" required>
                        
            <br><br>
            <input type="submit" value="Atualizar">
            <input type="reset" value="Restaurar">
            
        </form>
        
        <br><hr>
        <a href="home.jsp">Página inicial</a>
        
        <script>
                var form = document.getElementById("form");
                
                form.addEventListener("submit", function(e){
                    if(!confirm("Deseja realmente atualizar?")) {
                        e.preventDefault();
                        alert("Atualização cancelada!");
                        window.location.href="lista.jsp";
                    }
                });
           </script>
        
    </body>
</html>
