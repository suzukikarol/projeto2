<%-- 
    Document   : carrinho
    Created on : 20/03/2018, 08:31:40
    Author     : 11151100178, Beatriz
    
--%>

<%@page import="modelo.Produto"%>
<%@page import="modelo.ItemDeCompra"%>
<%@page import="modelo.CarrinhoDeCompra"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
    <%@include file="header.jsp"%>
    
        <div id="templatemo_main">

            <div id="sidebar" class="float_l">
                <%@include file="menulateral.jsp" %>
                </div>
                <%@include file="menulateral2.jsp" %>

                <%
                    HttpSession sessaoUsuario = request.getSession();
                    sessaoUsuario.getAttribute("usuarioAutentencado");
                %>
            </div>
                <div id="content" class="float_r">
                       <h1>Shopping Cart</h1>
                       <table width="680px" cellspacing="0" cellpadding="5">
                           <tr bgcolor="#ddd">
                               <th width="220" align="left">Imagem </th> 
                               <th width="180" align="left">Título </th>
                               <th width="180" align="left">Descrição </th>
                               <%--<th width="100" align="center">Quantity </th> --%>
                               <th width="60" align="right">Preço </th> 
                               
                               <th width="90"> </th>
                           </tr>
               <%
                   //recupera os produtos do carrinho da sessao
                   CarrinhoDeCompra carrinho = (CarrinhoDeCompra) session.getAttribute("carrinho");
                   for(ItemDeCompra item : carrinho.getItens()){
               %>
               <tr>
                   <td  valign="bottom"><img src="imagem/<%=item.getProduto().getImagem()%>"
                   alt="Imagem do produto <%=item.getProduto().getImagem()%>" style="width:100px"/></td>
                   <td><%=item.getProduto().getTitulo()%></td> 
                   <td><%=item.getProduto().getDescricao()%></td>
                   <td align="right"><%=item.getProduto().getPreco() %></td>
                   <td align="center"> <a href="ControleCarrinho?acao=removeProduto&idProduto=<%=item.getProduto().getId()%>">Remove</a> </td>
                   <%--<td><%=item.getTotal()%></td>
                   <td><a href="ControleCarrinho?acao=removeProduto&idProduto=<%=item.getProduto().getId()%>">X</td>--%>
                   <%--<td><a href="ControleCarrinho?acao=addProduto&idProduto=<%=item.getProduto().getId()%>">+</a></td>--%>
               </tr>            
             
               
                <%
                   }
                %> 
                <td align="right" style="background:#ddd; font-weight:bold">Total:</td>
                    <td align="right" style="background:#ddd; font-weight:bold"> <%=carrinho.calculaTotal() %> </td>                    
                    <td style="background:#ddd; font-weight:bold"> </td>
                </table>
                    <br>
                <a href="principal.jsp">                      
                    <input  type="submit" value="Continue Comprando" id="submit" name="submit1" class="submit_btn float_l"/></a>                    
                <a href="ControleCarrinho?acao=cancelaCompra">                      
                    <input  type="submit" value="Cancelar Compra" id="submit" name="submit2" class="submit_btn float_l"/></a>                
                <a href="pedidos.jsp">                      
                    <input  type="submit" value="Finalizar" id="submit" name="submit" class="submit_btn float_l"/></a>                
              <%-- <strong>Valor Total: <%=carrinho.calculaTotal() %></strong><br/><br/>--%>
               
        </div>        
    </body>
</html>