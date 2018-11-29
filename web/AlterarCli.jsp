<%-- 
    Document   : alterarCli
    Created on : 14/02/2018, 20:06:24
    Author     : Beatriz
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    
    <%@include file="header.jsp"%>
    
    <%@include file="carousel.jsp" %>
    
    <div id="templatemo_main">

        <div id="sidebar" class="float_l">
            <%@include file="menulateral.jsp" %>
        </div>
            <%@include file="menulateral2.jsp" %>
    </div>
    <div id="content" class="float_r">
    
        <% 
        HttpSession sessaoUsuario = request.getSession();
        sessaoUsuario.getAttribute("usuarioAutentencado");
        //recuperar a lista do request
        Usuario usuario1 = (Usuario) request.getAttribute("consulta");
        
        if(usuario1 != null){
            String msg = (String)request.getAttribute("erro");
        }
           
        %>
        
        <div class="content_half float_l checkout">
            <h3 style="text-align: center;">ATUALIZAR MEUS DADOS</h3>
        <form action="ControleUsuario?id=<%= usuario1.getId()%>" method="POST">                                                              
                <input type="hidden" class="form-control" id="id" name="txtId" value="<%= usuario1.getId()%>">
      
                <label for="text">Nome:</label> 
                <input type="text" style="width:300px;" name="txtNome" value="<%= usuario1.getNome() %>">
                        
                <label for="text">RG:</label> 
                <input type="text" style="width:300px;" name="txtRG" value="<%= usuario1.getRg()%>">
            
            
                <label for="text">CPF:</label> 
                <input type="text" style="width:300px;" name="txtCPF" value="<%= usuario1.getCpf()%>">
            
            
                <label for="text">Data de Nascimento:</label> 
                <input type="text" style="width:300px;" name="txtDtNasc" value="<%= usuario1.getDtnasc()%>">
            
            
                <label for="text">Telefone:</label> 
                <input type="text" style="width:300px;" name="txtTelefone" value="<%= usuario1.getTelefone()%>"> <br>
            
            
                <label for="text">E-mail:</label> 
                <input type="email" style="width:300px;" name="txtEmail" value="<%= usuario1.getEmail()%>">
            
            
                <label for="text">Login:</label> 
                <input type="text" style="width:300px;" name="txtLogin" value="<%= usuario1.getLogin()%>">
            
            
                <label for="text">Senha:</label> 
                <input type="text" style="width:300px;" name="txtSenha" value="<%= usuario1.getSenha()%>">
                      
            <!--Endereco: <input type="text" name="txtendereco" value="< usuario1.getEndereco()>"><br/><br/>-->
            
            
            
            <input a href="ControleUsuario?id=<%= usuario1.getId()%>" class="btn btn-success" type="submit" name="acao" value="Alterar">
            
           
            
            <br><br>
            <a href="ControleEndereco?acao=Consultar&id=<%= usuario1.getId()%>">Endereço</a><br>
            <a href="principal.jsp">Página Principal</a>
        </form>
             
    </div>
    </div>        
    </body>
</html>
