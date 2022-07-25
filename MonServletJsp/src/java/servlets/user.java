/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

/**
 *
 * @author aadiawiakoye
 */
public class user {
    private String pseudo;
    private String nom;
    private String prenom;
    private String email;
    private String password; 

public user(String pseudo, String nom, String prenom, String email, String password)
{
  this.pseudo = pseudo;
  this.email = email;
  this.nom = nom;
  this.prenom = prenom;
  this.password = password;
}
public String getPseudo(){
    return pseudo;
}
public void setPseudo(String pseudo){
    this.pseudo = pseudo;
}

public String getNom(){
    return nom;
}
public void setNom(String nom){
    this.nom = nom;
}

public String getPrenom(){
    return prenom;
}
public void setPrenom(String prenom){
    this.prenom = prenom;
}

public String getEmail(){
    return email;
}
public void setEmail(String email){
    this.email = email;
}

public String getPassword(){
    return password;
}
public void setPassword(String password){
    this.password = password;
}
}