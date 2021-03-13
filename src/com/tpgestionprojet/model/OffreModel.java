package com.tpgestionprojet.model;

public class OffreModel {
	// Déclaration des attributs
	private int idof;
	private String titre;
	private String description;
	private String duree;
	private String debut;
	private String lieu;
	private String service;
	private String categorie;
	private String lienoffres;
	private int idadmin;
	
	// Les getters
	public int getIdof() {
		return idof;
	}
	public String getTitre() {
		return titre;
	}
	public String getDescription() {
		return description;
	}
	public String getDuree() {
		return duree;
	}
	public String getDebut() {
		return debut;
	}
	public String getLieu() {
		return lieu;
	}
	public String getService() {
		return service;
	}
	public String getCategorie() {
		return categorie;
	}
	public String getLienoffres() {
		return lienoffres;
	}
	public int getIdadmin() {
		return idadmin;
	}
	
	// Les setters
	public void setIdof(int idof) {
		this.idof = idof;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setDuree(String duree) {
		this.duree = duree;
	}
	public void setDebut(String debut) {
		this.debut = debut;
	}
	public void setLieu(String lieu) {
		this.lieu = lieu;
	}
	public void setService(String service) {
		this.service = service;
	}
	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}
	public void setLienoffres(String lienoffres) {
		this.lienoffres = lienoffres;
	}
	public void setIdadmin(int idadmin) {
		this.idadmin = idadmin;
	}
	
	// Constructeur sans attributs
	public OffreModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	// Constructeur avec attributs
	public OffreModel(int idof, String titre, String description, String duree, String debut, String lieu, String service,
			String categorie, String lienoffres, int idadmin) {
		super();
		this.idof = idof;
		this.titre = titre;
		this.description = description;
		this.duree = duree;
		this.debut = debut;
		this.lieu = lieu;
		this.service = service;
		this.categorie = categorie;
		this.lienoffres = lienoffres;
		this.idadmin = idadmin;
	}
	

}
