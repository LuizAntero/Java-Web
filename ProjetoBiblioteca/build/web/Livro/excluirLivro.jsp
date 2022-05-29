<%-- 
    Document   : excluirLivro
    Created on : 28 de mai de 2022, 17:02:05
    Author     : DELL
--%>

<%@page import="br.com.DAO.LivroDAO"%>
<%@page import="br.com.DTO.LivroDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style> 
            label{
                font-style: italic;
                text-align: center;
                color: white;
            }
            h1{
                font-style: italic;
                text-align: center;
                color: white;
            }
            button{
                font-size: 20px;
                font-family: sans-serif;
            }      
            body{
                background-position: top;
                background-repeat: no-repeat;
                height: fit-content;
                background-size: contain;
                background-image: url("http://localhost:8080/ProjetoBiblioteca/Livro/livro.jpg");
            }
            body {
                width: 750px;
                height: 500px;
                margin: 0 auto;
                background-color: lightskyblue;
                padding: 0 30px 30px 30px;
                border: 5px solid aliceblue;
            }    
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Exclusão realizada com sucesso!</h1>       
        <a href="http://localhost:8080/ProjetoBiblioteca"><button>Home</button></a>
        <%
            try {
                LivroDTO objLivroDTO = new LivroDTO();
                objLivroDTO.setId_livro(Integer.parseInt(request.getParameter("id")));
            
                LivroDAO objLivroDAO = new LivroDAO();
                objLivroDAO.ExcluirLivro(objLivroDTO);
                } catch (Exception e) {
                }



        %>
        
        
        
        
    </body>
</html>
