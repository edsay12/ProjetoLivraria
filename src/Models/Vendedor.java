/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author usuario
 */
public class Vendedor extends Pessoa {

    private String sobrenome;
    private String usuario;
    private String senha;

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

}
