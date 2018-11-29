/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.Date;

/**
 *
 * @author beatr
 */
public class Vendas {
    private int id;
    private Usuario usuario;
    private Endereco endereco;
    private String descricao;
    private double valor_total;
    private Date data_venda;
    private boolean status;

    public Vendas() {
    }

    public Vendas(int id, Usuario usuario, Endereco endereco, String descricao, double valor_total, Date data_venda, boolean status) {
        this.id = id;
        this.usuario = usuario;
        this.endereco = endereco;
        this.descricao = descricao;
        this.valor_total = valor_total;
        this.data_venda = data_venda;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getValor_total() {
        return valor_total;
    }

    public void setValor_total(double valor_total) {
        this.valor_total = valor_total;
    }

    public Date getData_venda() {
        return data_venda;
    }

    public void setData_venda(Date data_venda) {
        this.data_venda = data_venda;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}