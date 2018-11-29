<%-- 
    Document   : AlterarEnd
    Created on : 27/08/2018, 08:47:59
    Author     : alunocmc
--%>

<%@page import="modelo.Endereco"%>
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
        Endereco endereco = (Endereco) request.getAttribute("consulta");
        
        if(endereco != null){
            String msg = (String)request.getAttribute("erro");
        }
           
        %>
  
        <div class="content_half float_l checkout">
            <h3 style="text-align: center;">ATUALIZAR MEUS DADOS</h3>
        <form action="ControleEndereco?id=<%= endereco.getId_endereco()%>" method="POST">
            
                <input type="hidden" class="form-control" id="id" name="txtId" value="<%= endereco.getId_endereco()%>">
                        
                <label for="text">Logradouro:</label>
                <input type="text" style="width:300px;" id="id" name="txtLogradouro" value="<%= endereco.getLogradouro()%>">
                        
                <label for="text">CEP:</label>
                <input type="text" style="width:300px;" id="id" name="txtCep" value="<%= endereco.getCep()%>">
                        
                <label for="text">Número:</label>
                <input type="text" style="width:300px;" id="id" name="txtNumero" value="<%= endereco.getNumero()%>">
                        
                <label for="text">Bairro:</label>
                <input type="text" style="width:300px;" id="id" name="txtBairro" value="<%= endereco.getBairro()%>">
                        
                <label for="text">Cidade:</label>
                <input type="text" style="width:300px;" id="id" name="txtCidade" value="<%= endereco.getCidade()%>">
                        
                <label for="text">Estado:</label>
                <%--<input type="text" style="width:300px;" id="id" name="txtEstado" value="<%= endereco.getEstado()%>">--%>
                <select name="txtEstado" style="width:300px;">
                    <option><%= endereco.getEstado()%></option>
                    <option>AC</option>
                    <option>Al</option>
                    <option>AP</option>
                    <option>AM</option>
                    <option>BA</option>
                    <option>CE</option>
                    <option>DF</option>
                    <option>ES</option>
                    <option>GO</option>
                    <option>MA</option>
                    <option>MT</option>
                    <option>MS</option>
                    <option>MG</option>
                    <option>PA</option>
                    <option>PB</option>
                    <option>PR</option>
                    <option>PE</option>
                    <option>PI</option>
                    <option>RJ</option>
                    <option>RN</option>
                    <option>RS</option>
                    <option>RO</option>
                    <option>RR</option>
                    <option>SC</option>
                    <option>SP</option>
                    <option>SE</option>
                    <option>TO</option>
                </select>
                <br><br>                        
            <input a href="ControleEndereco?id=<%= endereco.getId_endereco()%>" class="btn btn-success" type="submit" name="acao" value="Alterar">
            <%--<input class="btn btn-danger" type="submit" name="acao" value="Excluir"><br/><br/>--%>                        
       
            <br/>
            <a href="ControleUsuario?acao=Consultar&id=<%= usuario.getId()%>">Voltar</a><br>
            <a href="principal.jsp">Página Principal</a>
             </form>
    </div>
    </div>        
    </body>
</html>
