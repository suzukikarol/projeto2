<%-- 
    Document   : principal
    Created on : 06/09/2018, 10:07:48
    Author     : alunocmc
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Produto"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
   <%@include file="headeradmin.jsp"%>
<body>   
    
   <div class="container-fluid">
    <%-- <h2>Bem vindo, <%=usuario.getNome()%></h2>--%>
     <h3>Escolha uma opção</h3><br>
     <div class="row">
         <div class="col">
             <a href="../ControleUsuario?acao=Listar">
             <button type="button" class="btn btn-primary btn-lg">Lista de Clientes</button>
             </a>
         </div>
         <div class="col">
             <a href="../ControleEndereco?acao=Listar">
             <button type="button" class="btn btn-primary btn-lg">Lista de Endereços</button>
             </a>
         </div>

     </div>
     </div>

     <br>
     <div class="row">
         <div class="col">
             <a class="nav-link" href="cadProduto.jsp">
             <button type="button" class="btn btn-primary btn-lg">Cadastro de Produtos</button>
             </a>
         </div>
         <div class="col">
             <a class="nav-link" href="./ControleProduto?acao=Listar">
             <button type="button" class="btn btn-primary btn-lg">Lista de Produtos</button>
             </a>
         </div>
     </div>
     <br>
     <div class="row">
         <div class="col">
             <a class="nav-link" href="../ControleVenda?acao=Listar">
             <button type="button" class="btn btn-primary btn-lg">Lista de Vendas</button>            
             </a>
         </div>
         <div class="col">
             <a class="nav-link" href="../ControleProduto?acao=Listar">
             <button type="button" class="btn btn-primary btn-lg">Orçamentos</button>
             </a>
         </div>              
     </div>
    <!--<div class="row">
      <div class="col" style="background-color:lavender;">

      </div>
      <div class="col" style="background-color:orange;">.col
      
      </div>
      <div class="col" style="background-color:lavender;">.col
      
      </div>
      <div class="col" style="background-color:orange;">.col
      
      </div>
    </div>
  </div>--> 

</body>

</html>
