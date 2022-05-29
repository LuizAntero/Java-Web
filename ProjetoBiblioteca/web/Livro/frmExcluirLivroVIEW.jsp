<%-- 
    Document   : frmExcluirLivroVIEW
    Created on : 28 de mai de 2022, 16:40:53
    Author     : DELL
--%>

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
         <form action="excluirLivro.jsp" method="POST">            
            
             <label>Código Livro: </label> <br>
             <input type="text" name="id" 
                    value="<%=request.getParameter("id")%>">
             
             <br>
             
            <label>Nome do Livro: </label><br>
            <input type="text" name="nome"
                   value="<%=request.getParameter("nome")%>">
            
            <br>
            <button type="submit">Excluir</button>            
        </form>
    </body>
</html>
