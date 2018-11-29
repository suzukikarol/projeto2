<%-- 
    Document   : alterarProd
    Created on : 26/02/2018, 11:39:28
    Author     : 11151100178
--%>

<%@page import="modelo.Produto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--<link rel="stylesheet" href="../estilo.css"  type="text/css" media="screen"/>-->
        <title>Garagem NERD</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>                      
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>      
         
        <%
            HttpSession sessaoUsuario = request.getSession();
            sessaoUsuario.getAttribute("usuarioAutentencado");
            //recuperar a lista do request
            Produto produto = (Produto)request.getAttribute("consulta");
            
            if(produto != null){
                String msg = (String)request.getAttribute("erro");
            }
        %>
        
        
        <div class="container">
            
        <h2>ATUALIZAR CADASTRO DE PRODUTOS</h2>
        <form action="ControleProduto?id=<%= produto.getId()%>" method="POST">
        
        <div class="form-group">
            <label for="text">ID:</label>
            <input type="text" class="form-control" id="id" name="txtId" value="<%= produto.getId()%>">
        </div>
        <div class="form-group">
            <label for="text">Título:</label>
            <input type="text" class="form-control" id="titulo" name="txtTitulo" value="<%= produto.getTitulo()%>">
        </div>
        <div class="form-group">
            <label for="text">Descrição</label>
            <input type="text" class="form-control" id="descrcao" name="txtDescricao" value="<%= produto.getDescricao()%>">
        </div>
        <div class="form-group">
            <label for="text">Preço:</label>
            <input type="text" class="form-control" id="preco" name="txtPreco" value="<%= produto.getPreco()%>">
        </div>
        <div class="form-group">
            <label for="text">Imagem:</label>
            <input type="text" class="form-control" id="imagem" name="txtImagem" value="<%= produto.getImagem()%>">
        </div>
        
        
        
            <%--ID: <input type="text" name="txtId" value="<%=produto.getId() %>"><br/><br/>
            Título: <input type="text" name="txtTitulo" value="<%=produto.getTitulo() %>">
            Descricao: <input type="text" name="txtDescricao" value="<%=produto.getDescricao()%>"><br/>          
            Preço: <input type="text" name="txtPreco" value="<%=produto.getPreco() %>"><br/>
            Imagem: <input type="text" name="txtImagem" value="<%=produto.getImagem() %>"><br/>--%>
            
            </font>
            <input a href="ControleProduto?id=<%= produto.getId()%>" class="btn btn-success" type="submit" name="acao" value="Alterar">
            <input type="submit" name="acao" class="btn btn-danger" value="Excluir"><br/><br/>
            <a href="admin/main.jsp">Página Principal</a>
        </form>  
        </div>    
        </div>                        
    </body>
</html>
