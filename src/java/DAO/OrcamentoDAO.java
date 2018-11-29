/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Orcamento;
import modelo.Usuario;
import util.Conexao;

/**
 *
 * @author beatr
 */
public class OrcamentoDAO {
        private static final String ENVIAR = "INSERT INTO Orcamento(tituloc, descricaoc, precoc, imagemc, statusc) VALUES(?,?,?,?,?)";
    private static final String LISTAR = "SELECT * FROM Orcamento";
    //private Connection conexao = null;
        
    
    public void Enviar(Orcamento orcamento) throws SQLException{
        Connection conexao = null;
        PreparedStatement pstmt = null;
        
        try{
            conexao = Conexao.getConexao();
            pstmt = conexao.prepareStatement(ENVIAR, PreparedStatement.RETURN_GENERATED_KEYS);
            pstmt.setString(1, orcamento.getTituloc());
            pstmt.setString(2, orcamento.getDescricaoc());
            pstmt.setDouble(3, orcamento.getPrecoc());
            pstmt.setString(4, orcamento.getImagemc());
            pstmt.setBoolean(5, orcamento.isStatus());
            pstmt.execute();
            
            conexao.commit();
            }catch (SQLException e){
             try {
                 conexao.rollback();
             } catch (SQLException ex) {
                 Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
             }
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, "Erro no cadastro: "+ e.getMessage());
        }finally{
             if (conexao != null){
             try {
                 
                 conexao.close();
             } catch (SQLException ex) {
                 Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
             }
            
            }
         }
            
            /*ResultSet rsId = pstmt.getGeneratedKeys();
            rsId.next();
            orcamento.setId(rsId.getInt("id"));
        }catch (SQLException sqlErro) {
            throw new RuntimeException(sqlErro);
        }*/
    }
    
    public List<Orcamento> Listar() throws SQLException{
        List<Orcamento> listaorcamento = null;
        try{
            Connection conexao = Conexao.getConexao();
            PreparedStatement pstmt = conexao.prepareStatement(LISTAR);
            ResultSet rs = pstmt.executeQuery();
            
            listaorcamento = new ArrayList();
            while(rs.next()){
                Orcamento orcamento = new Orcamento();
                orcamento.setId(rs.getInt("id"));
                orcamento.setTituloc(rs.getString("tituloc"));
                orcamento.setDescricaoc(rs.getString("descricaoc"));
                orcamento.setPrecoc(rs.getDouble("precoc"));
                orcamento.setImagemc(rs.getString("imagemc"));
                //TODAS A LINHA VOLTAM TRUE POR CAUSA DESSE COMANDO
                orcamento.setStatus(true);
                
                listaorcamento.add(orcamento);
            }
        }catch (SQLException e){
            Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE, "Erro ao listar: " + e.getMessage());
        }
        return listaorcamento;
    }    
}