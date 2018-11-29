/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import DAO.OrcamentoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Orcamento;

/**
 *
 * @author alunocmc
 */
public class ControleOrcamento extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try{
            //parâmetro acao
            String acao = request.getParameter("acao");
            OrcamentoDAO contdao = new OrcamentoDAO();
            
            if(acao.equals("Enviar")){
                //recuperar os parâmetros do formulário
                String tituloc = request.getParameter("txtTituloc");
                String descricaoc = request.getParameter("txtDescricaoc");
                double precoc = Double.parseDouble(request.getParameter("txtPrecoc"));
                String imagemc = request.getParameter("txtImagemc");                
                
                Orcamento contato = new Orcamento();
                contato.setTituloc(tituloc);
                contato.setDescricaoc(descricaoc);
                contato.setPrecoc(precoc);
                contato.setImagemc(imagemc);
                contato.setStatus(true);
                
                contdao.Enviar(contato);
                response.getWriter().println("Enviado com sucesso!");
                
                request.setAttribute("listaorcamento", contdao.Listar());
                RequestDispatcher rd = request.getRequestDispatcher("/principal.jsp");
                rd.forward(request, response);
            }else{
                if(acao.equals("Listar")){
                    OrcamentoDAO dao = new OrcamentoDAO();
                    List<Orcamento> listaorcamento = dao.Listar();
                    //atribuir a lista ao request
                    request.setAttribute("listaorcamento", listaorcamento);
                    request.getRequestDispatcher("/admin/Listaorcamento.jsp").forward(request, response);
                }
            }
            
        }catch(Exception erro){
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
