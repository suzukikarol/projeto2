<%-- 
    Document   : ListaEnd
    Created on : 24/08/2018, 08:56:03
    Author     : alunocmc
--%>

<%@page import="modelo.Endereco"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--<link rel="stylesheet" href="estilo.css"  type="text/css" media="screen"/>-->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>                      
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <title>Garagem NERD</title>
    </head>
    <body>
        <div class="container">
         <h2>Lista de Usuário</h2>
        <%
            HttpSession sessaoUsuario = request.getSession();
            sessaoUsuario.getAttribute("usuarioAutentencado");
            //recuperar lista do request
            List<Endereco> listaEndereco = (List<Endereco>) request.getAttribute("listaEnd");
        %>
        
        <table class="table table-striped">
            <thead>
              <tr>
                <th>Logradouro:</th>
                <th>CEP:</th>
                <th>Número:</th>
                <th>Bairro:</th>
                <th>Cidade:</th>
                <th>Estado:</th>
              </tr>
            </thead>
        <tbody>
        
        
       <!-- <table data-role="table" border="1" id="table-custom-2" data-mode="columntoggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b">
        <tr>
            <td>Logradouro:</td>
                <td>CEP:</td>
                <td>Número:</td>
                <td>Bairro:</td>
                <td>Cidade:</td>
                <td>Estado:</td>
                
                <td>    </td>
            </tr>-->
            
            <% 
                for(Endereco endereco: listaEndereco ){
                       
            %>
            
            <tr>
                
                <td> <%= endereco.getLogradouro()%>  </td>
                <td> <%= endereco.getCep()%>  </td>
                <td> <%= endereco.getNumero()%>  </td>
                <td> <%= endereco.getBairro()%>  </td>
                <td> <%= endereco.getCidade()%>  </td>
                <td> <%= endereco.getEstado()%>  </td>
                
                <%-- <td><a href="ControlePessoa?id=<%=endereco.getId() %>&acao=Excluir"> Excluir</a></td> --%>
                <td><a href="ControleEndereco?id=<%=endereco.getId_endereco()%>&acao=Consultar"> Editar</a></td>
                <td></td>
                
            </tr>

            <% 
               }           
            %>
         
        </table>        
            <br><br/>
            <a href="admin/main.jsp">Voltar</font></a>
    </body>
</html>
