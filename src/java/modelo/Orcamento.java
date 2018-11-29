/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author alunocmc
 */
public class Orcamento {
    int id;
    String tituloc;
    String descricaoc;
    Double precoc;
    String imagemc;
    boolean status;

    public Orcamento() {
    }

    public Orcamento(int id, String tituloc, String descricaoc, Double precoc, String imagemc, boolean status) {
        this.id = id;
        this.tituloc = tituloc;
        this.descricaoc = descricaoc;
        this.precoc = precoc;
        this.imagemc = imagemc;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTituloc() {
        return tituloc;
    }

    public void setTituloc(String tituloc) {
        this.tituloc = tituloc;
    }

    public String getDescricaoc() {
        return descricaoc;
    }

    public void setDescricaoc(String descricaoc) {
        this.descricaoc = descricaoc;
    }

    public Double getPrecoc() {
        return precoc;
    }

    public void setPrecoc(Double precoc) {
        this.precoc = precoc;
    }

    public String getImagemc() {
        return imagemc;
    }

    public void setImagemc(String imagemc) {
        this.imagemc = imagemc;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
