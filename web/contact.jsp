<%-- 
    Document   : contact
    Created on : 13/10/2018, 11:28:40
    Author     : beatriz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    
     <%@include file="header.jsp"%>
     <div id="templatemo_main">

            <div id="sidebar" class="float_l">
                <%@include file="menulateral.jsp" %>
                </div>
                <%@include file="menulateral2.jsp" %>

            </div>
        <%
            HttpSession sessaoUsuario = request.getSession();
            sessaoUsuario.getAttribute("usuarioAutentencado");
        %>
        <div id="content" class="float_r">
        	
            <h1>Entre em contato conosco</h1>
            <div class="content_half float_l">
	        <h4>Quer vender algum título?</h4>
                <p>Mande agora mesmo uma foto, o título e uma pequena descrição do estado, ano, preço e edição</p>
                <p>Nós iremos avaliar e retornaremos o contato!</p>
                <div id="contact_form">
                   <form method="post" name="contact" action="#">
                        
                        <label for="author">Título:</label> <input type="text" id="titulo" name="txtTitulo" class="required input_field" />
                        <div class="cleaner h10"></div>
                        <label for="text">Descrição:</label> <textarea id="text" name="txtDescricao" rows="0" cols="0" class="required"></textarea>
                        <div class="cleaner h10"></div>
                        <label for="preco">Preço:</label> <input type="text" name="txtPreco" id="preco" class="input_field" />
                        <label for="imagem">Imagem:</label> <input type="file" id="imagem" name="txtImagem" />
                        <div class="cleaner h10"></div>
			

			<div class="cleaner h10"></div>
        
                        
                        
                        <input type="submit" value="Send" id="submit" name="submit" class="submit_btn float_l" />
			<input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" />
                        
            	</form>
                </div>
            </div>
            </div>                     
    </body>
</html>
