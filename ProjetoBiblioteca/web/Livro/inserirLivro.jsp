<%-- 
    Document   : inserirLivro
    Created on : 28 de mai de 2022, 11:47:18
    Author     : Luiz Antero Junior
--%>

<%@page import="com.sun.org.apache.bcel.internal.generic.AALOAD"%>
<%@page import="br.com.DAO.LivroDAO"%>
<%@page import="br.com.DTO.LivroDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style> 
            h1{
                font-style: italic;
                text-align: center;
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
            h1 {
                color: white;
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
        
        <h1>Cadastro realizado com sucesso!</h1>
        <a href="http://localhost:8080/ProjetoBiblioteca"><button>Home</button></a>
        
        
        <%
            try {
                LivroDTO objLivroDTO = new LivroDTO();
                objLivroDTO.setNome_livro(request.getParameter("nome"));
            
                LivroDAO objLivroDAO = new LivroDAO();
                objLivroDAO.CadastrarLivro(objLivroDTO);
                } catch (Exception e) {
                }
        %>
                
    </body>
</html>
