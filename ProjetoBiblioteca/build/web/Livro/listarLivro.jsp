<%-- 
    Document   : listarLivro
    Created on : 28 de mai de 2022, 15:36:49
    Author     : DELL
--%>

<%@page import="br.com.DTO.LivroDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.LivroDAO"%>
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
        
        <%
          
        try {
            
            LivroDAO objLivroDAO = new LivroDAO();
            ArrayList<LivroDTO> lista = objLivroDAO.PesquisarLivro();
            
            for(int num = 0; num < lista.size(); num ++){
                out.print("<h5>Código: " + lista.get(num).getId_livro() + "<br>");
                out.print("Nome: " + lista.get(num).getNome_livro() + "<br>");
                
                out.print("<a href='frmExcluirLivroVIEW.jsp?id=" 
                + lista.get(num).getId_livro() + "&nome="
                + lista.get(num).getNome_livro() + "'> Excluir </a>"); 

                out.print("<a href='frmAlterarLivroVIEW.jsp?id=" 
                + lista.get(num).getId_livro() + "&nome="
                + lista.get(num).getNome_livro() + "'>Alterar </a>"); 
                
                
        %> <br><br>  <%
                
            }
            
            
            } catch (Exception e) {
            }

            
        %>   
        <br>
        <br>
        <a href="http://localhost:8080/ProjetoBiblioteca"><button>Home</button></a>
    </body>
</html>
