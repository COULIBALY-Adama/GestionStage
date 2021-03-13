package com.tpgestionprojet.model;

public class UserModel {
	// Déclaration des attributs de la classe
private int idus;
private String nom;
private String prenom;
private String email;
private String password;
private String fonction;

//Les getters
public int getIdus() {
	return idus;
}
public String getNom() {
	return nom;
}
public String getPrenom() {
	return prenom;
}
public String getEmail() {
	return email;
}
public String getPassword() {
	return password;
}
public String getFonction() {
	return fonction;
}

//Les setters
public void setIdus(int idus) {
	this.idus = idus;
}
public void setNom(String nom) {
	this.nom = nom;
}
public void setPrenom(String prenom) {
	this.prenom = prenom;
}
public void setEmail(String email) {
	this.email = email;
}
public void setPassword(String password) {
	this.password = password;
}
public void setFonction(String fonction) {
	this.fonction = fonction;
}
// Constructeur sans attributs
public UserModel() {
	super();
	// TODO Auto-generated constructor stub
}

	//Méthode avec les attributs
public UserModel(int idus, String nom, String prenom, String email, String password, String fonction) {
	super();
	this.idus = idus;
	this.nom = nom;
	this.prenom = prenom;
	this.email = email;
	this.password = password;
	this.fonction = fonction;
}

}
