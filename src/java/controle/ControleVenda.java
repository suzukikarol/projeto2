/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import DAO.VendasDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Endereco;
import modelo.Produto;
import modelo.Usuario;
import modelo.Vendas;

/**
 *
 * @author alunocmc
 */
public class ControleVenda extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try{
             //parâmetro acao
            String acao = request.getParameter("acao");
            Vendas venda = new Vendas();
            
            if(acao.equals("finalizar")){
                //recuperar os ids
                Usuario usuario = new Usuario();
                usuario.setId(Integer.parseInt(request.getParameter("id_usuario")));
                
                Endereco endereco = new Endereco();
                endereco.setId_endereco(Integer.parseInt(request.getParameter("id_endereco")));
                //venda.setUsuario(0);
                
                
                venda.setDescricao(request.getParameter("txtCompra"));
                venda.setValor_total(Double.parseDouble(request.getParameter("total")));
                venda.setStatus(false);
                
                VendasDAO vendas = new VendasDAO();
                vendas.CadastrarVenda(venda);
                request.setAttribute("msg", "Finalizado com sucesso!");
                RequestDispatcher rd = request.getRequestDispatcher("/principal.jsp");
                rd.forward(request, response);                                               
                
            }else{
                if(acao.equals("Listar")){
                    VendasDAO dao = new VendasDAO();
                    List<Vendas> listavenda = dao.listar();
                    
                    //atribuir a lista ao request
                    request.setAttribute("listavanda", listavenda);
                    
                    request.getRequestDispatcher("admin/ListaVendas.jsp");
                }else if(acao.equals("Consultar")){
                    //pega os dados da interface
                    int id = Integer.parseInt(request.getParameter("id"));
                    //instancia nova venda e passa o id para a instância
                    venda.setId(id);
                    //instancia a DAO
                    VendasDAO dao = new VendasDAO();
                    
                    Vendas consultarVendas = dao.Consultar(venda);
                    //a lista é settada com o nome de consulta
                    request.setAttribute("consulta", consultarVendas);
                    //é referenciado os dados para a jsp pedidos
                    RequestDispatcher rd = request.getRequestDispatcher("pedidos.jsp");
                    //quem vai acionar toda essa ação é o forward
                    rd.forward(request, response);
                }
            }
            
        }catch (Exception erro){
            RequestDispatcher rd = request.getRequestDispatcher("/erro.jsp");
            request.setAttribute("erro", erro);
            rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
