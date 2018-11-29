<%-- 
    Document   : finalizar
    Created on : 08/09/2018, 20:37:12
    Author     : beatr
--%>

<%@page import="modelo.Endereco"%>
<%@page import="modelo.ItemDeCompra"%>
<%@page import="modelo.CarrinhoDeCompra"%>
<%@page import="modelo.Vendas"%>
<%@page import="modelo.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Garagem NERD</title>
    </head>
    <body>
        
        <%@include file="header.jsp"%>
        <div id="templatemo_main">
            <div id="sidebar" class="float_l">
                <%@include file="menulateral.jsp" %>
            </div>
                <%@include file="menulateral2.jsp" %>
        </div>
        <%
            //recupera os produtos do carrinho da sessao
            //Usuario usuario = (Usuario) request.getAttribute("consulta");
            CarrinhoDeCompra carrinho = (CarrinhoDeCompra) session.getAttribute("carrinho");
            Vendas venda = new Vendas();
            Endereco endereco = new Endereco();
            //Produto produto = new Produto();
            //for(ItemDeCompra item : carrinho.getItens())           
            {  
        %>
        <div id="content" class="float_r">
        	<h2>Finalizar</h2>
            <h5><strong>Detalhes da Compra</strong></h5>
            <div class="content_half float_l checkout">
                <form action="ControleUsuario?id=<%= usuario.getId()%>" method="POST">
                    <input type="hidden" class="form-control" id="id" name="txtId" value="<%= usuario.getId()%>">
                    <%--<input type="text" class="form-control" id="id" name="txtId" value="<%= usuario.getEndereco().getId_endereco()%>">--%>
                    Nome:                				
                    <input type="text"  style="width:300px;" value="<%=usuario.getNome()%>"/>
                    ID do Cliente:
                    <input type="text"  style="width:300px;"  value="<%=usuario.getId()%>" />
                    Email:
                    <input type="text"  style="width:300px;" value="<%= usuario.getEmail()%>" />
                    Country:
                    <input type="text"  style="width:300px;" value="<%= usuario.getEndereco()%>"/>               
            </div>
            
            <div class="content_half float_r checkout">
                <%--<form action="ControleUsuario?id=<%= usuario.getEndereco().getId_endereco()%>" method="POST">             
                    Logradouro:
                        <input type="text"  style="width:300px;" value="<%=usuario.getEndereco().getLogradouro()%>"/> 
                    Número:<br />
                     <span style="font-size:10px">Please, specify your reachable phone number. YOU MAY BE GIVEN A CALL TO VERIFY AND COMPLETE THE ORDER.</span>
                    <input type="text"  style="width:300px;" value="<%= usuario.getEndereco().getNumero()%>"/>
                    CEP:
                        <input type="text"  style="width:300px;" value="<%= usuario.getEndereco().getCep()%>" />
                    Bairro:
                    <input type="text"  style="width:300px;" value="<%= usuario.getEndereco().getBairro()%>" />
                    Cidade:
                        <input type="text"  style="width:300px;" value="<%= usuario.getEndereco().getCidade()%>" />
                    Estado:
                        <input type="text"  style="width:300px;" value="<%= usuario.getEndereco().getEstado()%>" />--%>
                </form>  
            </div>
            
            <div class="cleaner h50"></div>
            <h3>Carrinho de Compras</h3>
            <h4>TOTAL: <strong><%=carrinho.calculaTotal() %></strong></h4>
            <input a href="ControleVenda?id=<%= usuario.getId()%>" class="btn btn-success" type="submit" name="acao" value="Finalizar">
			<p><input type="checkbox" />I have accepted the Terms of Use.</p>
            <table style="border:1px solid #CCCCCC;" width="100%">
                <tr>
                    <td height="80px"> <img src="images/paypal.gif" alt="paypal" /></td>
                    <td width="400px;" style="padding: 0px 20px;">Recommended if you have a PayPal account. Fastest delivery time.
                    </td>
                    <td><a href="#" class="more">PAYPAL</a></td>
                </tr>
                <tr>
                    <td  height="80px"><img src="images/2co.gif" alt="paypal" />
                    </td>
                    <td  width="400px;" style="padding: 0px 20px;">2Checkout, Inc. is an authorized retailer of goods and services provided by Template-Guide.com
                    2CheckOut accepts customer orders via online checks, Visa, MasterCard, Discover, American Express, Diners, JCB and debit cards with the Visa, Mastercard logo. Sed laoreet ornare ligula eu blandit. Validate <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>XHTML</strong></a> &amp; <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong>CSS</strong></a>.
                  </td>
                    <td><a href="#" class="more">2CHECKOUT</a></td>
                </tr>
            </table>
        <%}%>
		</div>
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_main -->
    </body>
</html>
