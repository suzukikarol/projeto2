/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Endereco;
import modelo.Produto;
import modelo.Usuario;
import modelo.Vendas;
import util.Conexao;

/**
 *
 * @author alunocmc
 */
public class VendasDAO {
    
    private static final String CADASTRAR_VENDAS ="INSERT INTO vendas(id_usuario, id_endereco, descricao, valor_total, data_venda,status) VALUES (?,?,?,?,now(),?)";
    private static final String LISTAR_VENDAS ="SELECT * FROM Vendas";
    private static final String CONSULTAR_VENDAS ="SELECT * FROM Vendas WHERE id_vendas=?";
    
    private Connection conexao = null;
   

    public VendasDAO() {
        this.conexao = Conexao.getConexao();
    }
    
    public void CadastrarVenda(Vendas venda){
        try{
            //Vendas venda = new Vendas();
            conexao = Conexao.getConexao();
            
            PreparedStatement pstmtVendas = conexao.prepareStatement(CADASTRAR_VENDAS, PreparedStatement.RETURN_GENERATED_KEYS);
            pstmtVendas.setInt(1, venda.getUsuario().getId());
            pstmtVendas.setInt(2, venda.getEndereco().getId_endereco());
            pstmtVendas.setString(3, venda.getDescricao());
            pstmtVendas.setDouble(4, venda.getValor_total());
            //pstmtVendas.setDate(4, (Date) venda.getData_venda());
            //pstmtVendas.setBoolean(5,  venda.isStatus());
            pstmtVendas.execute();
            
            ResultSet rsId =  pstmtVendas.getGeneratedKeys();
            rsId .next();
            //conexao.commit();
   
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
    }
    public ArrayList<Vendas> listar(){
        ArrayList<Vendas> listavendas = new ArrayList<Vendas>();
        try{
            conexao = Conexao.getConexao();
            
            PreparedStatement pstmtVendas = conexao.prepareStatement(LISTAR_VENDAS);
            ResultSet rs = pstmtVendas.executeQuery();
            
            while (rs.next()){
                Vendas venda = new Vendas();
                venda.setId(rs.getInt("id_vendas"));
                Usuario usuario = new Usuario();
                usuario.setId(rs.getInt("id_usuario"));
                venda.setUsuario(usuario);
                
                Endereco endereco = new Endereco();
                endereco.setId_endereco(rs.getInt("id_endereco"));
                venda.setEndereco(endereco);
                
               // venda.setUsuario((venda.getUsuario().getId()));
                //venda.setEndereco((venda.getEndereco().getId_endereco()));
                venda.setDescricao(rs.getString("descricao"));
                venda.setValor_total(rs.getDouble("valor_total"));
                venda.setData_venda(rs.getDate("data_venda"));
                venda.setStatus(true);
                
                listavendas.add(venda);
                
            }
        }catch(SQLException e) {
            Logger.getLogger(Vendas.class.getName()).
                    log(Level.SEVERE, "Erro ao listar: " + e.getMessage());
        }finally{ //***************** new part
            try{
                if(conexao != null){
                    conexao.close();
                }
            }catch (SQLException e){
                throw new RuntimeException(e);
            }
        }  
        return listavendas;
    }
    
    public Vendas Consultar(Vendas venda){
        Vendas vendaConsulta = new Vendas();
        try{
            conexao = Conexao.getConexao();
            
            PreparedStatement pstmt = conexao.prepareStatement(CONSULTAR_VENDAS);
            pstmt.setInt(1, venda.getId());
            ResultSet rs = pstmt.executeQuery();                        
            
            //só vai retornar uma linha de obj
            while(rs.next()){
                vendaConsulta.setId(rs.getInt("id"));
                Usuario usuario = new Usuario();
                usuario.setId(rs.getInt("id_usuario"));
                vendaConsulta.setUsuario(usuario);
                
                Endereco endereco = new Endereco();
                endereco.setId_endereco(rs.getInt("id_endereco"));
                vendaConsulta.setEndereco(endereco);
                                
                vendaConsulta.setDescricao(rs.getString("descricao"));
                vendaConsulta.setValor_total(rs.getDouble("valor_total"));
                vendaConsulta.setData_venda(rs.getDate("data_venda"));
                vendaConsulta.setStatus(true);
            }
        }catch (Exception e) {
               Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, "Erro ao listar: "+ e.getMessage());
        }  
        return vendaConsulta;
    }
}
