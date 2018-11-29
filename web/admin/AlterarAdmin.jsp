<%-- 
    Document   : AlterarAdmin
    Created on : 27/09/2018, 08:35:13
    Author     : alunocmc
--%>

<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>                      
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <title>Garagem NERD</title>
    </head>
    <body>
        <% 
        
        //recuperar a lista do request
        Usuario usuario = (Usuario) request.getAttribute("consulta");
        
        if(usuario != null){
            String msg = (String)request.getAttribute("erro");
        }
           
        %>
        
        <div class="container">
            <h2 style="text-align: center;">ATUALIZAR MEUS DADOS</h2>
        <form action="ControleUsuario?id=<%= usuario.getId()%>" method="POST">
            
            <div class="progress">
                <div class="progress-bar" style="width:50%"></div>
            </div>
            
            <div class="form-group">
                <label for="text">ID:</label>
                <input type="text" class="form-control" id="id" name="txtId" value="<%= usuario.getId()%>">
            </div>
            
            <div class="form-group">
                <label for="text">Nome:</label> 
                <input type="text" class="form-control" name="txtNome" value="<%= usuario.getNome() %>">
            </div>
            <div class="form-group">
                <label for="text">RG:</label> 
                <input type="text" class="form-control" name="txtRG" value="<%= usuario.getRg()%>">
            </div>
            <div class="form-group">
                <label for="text">CPF:</label> 
                <input type="text" class="form-control" name="txtCPF" value="<%= usuario.getCpf()%>">
            </div>
            <div class="form-group">
                <label for="text">Data de Nascimento:</label> 
                <input type="text" class="form-control" name="txtDtNasc" value="<%= usuario.getDtnasc()%>">
            </div>
            <div class="form-group">
                <label for="text">Telefone:</label> 
                <input type="text" class="form-control" name="txtTeefone" value="<%= usuario.getTelefone()%>">
            </div>
            <div class="form-group">
                <label for="text">E-mail:</label> 
                <input type="email" class="form-control" name="txtEmail" value="<%= usuario.getEmail()%>">
            </div>
            <div class="form-group">
                <label for="text">Login:</label> 
                <input type="text" class="form-control" name="txtLogin" value="<%= usuario.getLogin()%>">
            </div>
            <div class="form-group">
                <label for="text">Senha:</label> 
                <input type="text" class="form-control" name="txtSenha" value="<%= usuario.getSenha()%>">
            </div>           
            <!--Endereco: <input type="text" name="txtendereco" value="< usuario.getEndereco()>"><br/><br/>-->
            
            
            
            <input a href="ControleUsuario?id=<%= usuario.getId()%>" class="btn btn-success" type="submit" name="acao" value="Alterar">
            
            
            
            <br><br>
            <a href="ControleEndereco?acao=Consultar&id=<%= usuario.getId()%>">Endereço</a><br>
            <a href="main.jsp">Página Principal</a>
        </form>
    </div>
    </body>
</html>
