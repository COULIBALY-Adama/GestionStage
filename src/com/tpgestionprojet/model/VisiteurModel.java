package com.tpgestionprojet.model;

//import java.util.Date;

public class VisiteurModel {

	// Déclaration des attributs
	private int idvis;
	private String reference;
	private String email;
	private String DatePart;
	private String lienoffre;
	
	// Les getters
	public int getIdvis() {
		return idvis;
	}
	public String getEmail() {
		return email;
	}
	public String getDatePart() {
		return DatePart;
	}
	public String getReference() {
		return reference;
	}
	public String getLienoffre() {
		return lienoffre;
	}
	
	// Les setters
	public void setIdvis(int idvis) {
		this.idvis = idvis;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setDatePart(String datePart) {
		DatePart = datePart;
	}
	public void setReference(String reference) {
		this.reference = reference;
	}
	public void setLienoffre(String lienoffre) {
		this.lienoffre = lienoffre;
	}
	
	// Constructeur sans attributs
	public VisiteurModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	// Constructeur avec attributs
	public VisiteurModel(int idvis, String reference, String lienoffre) {
		super();
		this.idvis = idvis;
		this.reference = reference;
		this.lienoffre = lienoffre;
	}
	
		
}
