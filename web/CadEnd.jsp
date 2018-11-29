<%-- 
    Document   : CadEnd
    Created on : 01/09/2018, 20:20:47
    Author     : beatr
--%>

<%@page import="modelo.Usuario"%>
<%@page import="modelo.CarrinhoDeCompra"%>
<%@page import="modelo.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
        <title>Garagem NERD</title>
        <!--<link rel="stylesheet" href="estilo.css"  type="text/css" media="screen"/>-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>                      
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
    <body>
        <% 
            Usuario usuario = (Usuario) request.getAttribute("usuario");
            //Produto produto = new Produto();
            //recupera os produtos do carrinho da sessao
            //CarrinhoDeCompra carrinho = (CarrinhoDeCompra) session.getAttribute("carrinho");
        %>
        <div class="container">
        <h2><font color="black">Cadastro de Endereço</h2>
        <form action="ControleEndereco" method="POST">
            
            <input type=" hidden" value="<%=usuario.getId()%>" name="id" ></input>
           
            <!--<div class="progress">
                <div class="progress-bar" style="width:50%"></div>
            </div>-->
            <div class="form-group">
                <label for="text">Logradouro:</label>
                <input type="text" class="form-control" id="logradouro" placeholder="Digite o Logradouro" name="txtLogradouro">
            </div>
            <div class="form-group">
                <label for="text">CEP:</label>
                <input type="text" class="form-control" id="cep" placeholder="Digite o CEP" name="txtCep">
            </div>
            <div class="form-group">
                <label for="text">Número:</label>
                <input type="text" class="form-control" id="numero" placeholder="Digite o número" name="txtNumero">
            </div>
            <div class="form-group">
                <label for="text">Bairro:</label>
                <input type="text" class="form-control" id="bairro" placeholder="Digite o Bairro" name="txtBairro">
            </div>
            <div class="form-group">
                <label for="text">Cidade:</label>
                <input type="text" class="form-control" id="cidade" placeholder="Digite a Cidade" name="txtCidade">
            </div>
            <div class="form-group">
                <label for="text">Estado:</label>
                <input type="text" class="form-control" id="estado" placeholder="Digite o estado" name="txtEstado">
            </div>
            <!--
            Logradouro:<br><input type="text" name="txtLogradouro"><br>
            CEP:<br> <input name="txtCep" type="text"><br/>
            Número:<br><input name="txtNumero" type="text"><br>
            Bairro:<br> <input name="txtBairro" type="text"><br/>
            Cidade:<br> <input name="txtBairro" type="text"><br/>
            Estado: <br><input type="text" name="txtEstado"><br/><br/><br/> -->           
            
            <input type="submit" value="Cadastrar" name="acao" class="btn btn-success"><br/><br/>
 
            
          <a href="cadCli.html">Voltar</a><br/>  
          <a href="ControleProduto?id=<%=request.getParameter("IdProduto")%>&acao=finalizarCompra">Terminar</a><br/>  
          <!--<a href="principal.jsp">Página Principal</a><br/>-->
        </form>  
        </div>
    </body>
</html>
