<%-- 
    Document   : headeradmin
    Created on : 13/10/2018, 15:24:11
    Author     : beatr
--%>
<%@page import="modelo.Usuario"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Garagem NERD</title>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    
   
    </head>
    <body>
        
        <%
            //recupera o usuario da sessao
            Usuario usuario = (Usuario)session.getAttribute("usuarioAutenticado");
            //Usuario usuario = new Usuario();
            
            if(usuario !=null){
        %>
        
        <%}%>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <!-- Brand/logo -->
        
        <a class="navbar-brand" href="../principal.jsp">
            <img src="../imagem/slider/marvelbackground.jpg" style="width:90px;">
        </a>
        <a class="navbar-brand" href="main.jsp">Garagem NERD</a>
        <!-- Links -->
        <ul class="navbar-nav" align="right">
        <%--  <li class="nav-item">
            <a class="nav-link" href="../ControleUsuario?id=<%=usuario.getId()%>&acao=Consultar">Meus Dados</a>
          </li> 
          <li class="nav-item">
            <a class="nav-link" href="../ControleUsuario?acao=Listar">Lista de Clientes</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../ControleEndereco?acao=Listar">Lista de Endereços</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cadProduto.jsp">Cadastro de Produtos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../ControleProduto?acao=Listar">Lista de Produtos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../ControleVenda?acao=Listar">Lista de Vendas</a>
          </li>
          <li class="nav-item"> 
            <a class="nav-link" href="../ControleProduto?acao=Listar">Contatos</a>
          </li>--%>
        <li class="nav-item" align="right">
              <a class="nav-link"  href="../ControleAcesso?acao=Sair">Logout</a>
          </li>

        </ul>
          </nav>
          <div class="container-fluid">  
    </body>
