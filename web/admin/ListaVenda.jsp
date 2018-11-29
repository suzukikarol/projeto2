<%-- 
    Document   : ListaVenda
    Created on : 01/11/2018, 11:44:45
    Author     : alunocmc
--%>

<%@page import="modelo.Vendas"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="estilo.css"  type="text/css" media="screen"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <title>Garagem NERD</title>
    </head>
    <body>
       <div class="container">
        <h2 style="text-align:center">Lista de Produtos</h2>
        <% 
            HttpSession sessaoUsuario = request.getSession();
            sessaoUsuario.getAttribute("usuarioAutentencado");
            //recuperar lista do request
            List<Vendas> listavenda = (List<Vendas>) request.getAttribute("listavenda"); //("lista"); mudar na controle se der erro
        %>
        <input class="form-control" id="myInput" type="text" placeholder="Search..">
         <table class="table table-striped">
            <thead>
              <tr>
                <th>ID Venda:</th>
                <th>ID Usuário:</th>
                <th>ID Produto:</th>
                <th>Valor Total:</th>
                <th>Data Venda:</th>
                <th>Status:</th>
              </tr>
            </thead>
            <tbody>
            <%
                for(Vendas venda : listavenda){
            %>
            <tbody id="myTable">
            <tr>
              <td><%= venda.getId()%></td>
              <td><%= venda.getUsuario()%></td>
              <td><%= venda.getProduto()%></td>
              <td><%= venda.getValor_total()%></td>
              <td><%= venda.getData_venda()%></td>
              <td><%= venda.isStatus()%></td>
              <td><a href="ControleVenda?id=<%=venda.getId() %>&acao=Consultar"> Editar</a></td>
            </tr>
            </tbody>
            <% 
                }
            %>
        </table>
        <script>
             $(document).ready(function(){
             $("#myInput").on("keyup", function() {
               var value = $(this).val().toLowerCase();
               $("#myTable tr").filter(function() {
                 $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
               });
             });
           });
        </script>  
        </div>
    </body>
</html>
