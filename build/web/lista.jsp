<%-- 
    Document   : lista
    Created on : 4 de mai. de 2023, 15:09:41
    Author     : QI
--%>

<%@page import="model.PetDAO"%>
<%@page import="model.Pet"%>
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
        <img id="listimg" src="img/lista.jpg" alt="alt"/>

        <div id="Lista">
            <h1>Você adotou:</h1>
            <table>
                <thead>
                <th>Id  </th>
                <th>Pet  </th>
                <th>Raça  </th>
                <th></th>
                <th></th>
                </thead>
                <tbody>
                    <%
                          PetDAO tdao = new PetDAO();
                          for(Pet item : tdao.listPet()){
                    %>
                    
                    <tr>
                        <td><%= item.getId() %></td>
                        <td><%= item.getAnimal()%></td>
                        <td><%= item.getRaca()%></td>
                        <td>
                            <a href="UpdatePet?cod=<%= item.getId() %>"><img id="delete1" src="img/edit-icon.png" alt="alt" width="30px"/></a>
                        </td>
                        <td>
                            <a onclick="confirmaDelete(<%= item.getId() %>, '<%= item.getAnimal()%>')"><img id="delete1" src="img/delete-icon.png" alt="alt" width="30px"/></a>
                        </td>
                    </tr>
                    <%
                          }
                    %>
                </tbody>


            </table>
        </div>

        <br>
        <a href="home.jsp"><button type="button" class="btn btn-primary" id="ListaBTN">Página Incial</button></a>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <script>
                                function confirmaDelete(cod, tipo) {
                                    if (confirm("Deseja realmente excluir " + tipo + "?")) {
                                        window.location.replace("DeleteTransporte?cod=" + cod);
                                    } else {
                                        alert("Exclusão cancelada!");
                                    }
                                }
        </script>
    </body>
</html>
