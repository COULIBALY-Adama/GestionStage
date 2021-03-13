	package com.tpgestionprojet.controleur;

import java.sql.Connection;			

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.tpgestionprojet.model.VisiteurModel;

	public class VisiteurControl {
		ConnexionBD bdd;
		Connection connec;
		Statement stat ;
		ResultSet resultat;
		
		// methode permettant d avoir la date du jour (Pas encore utilisé)
		public  String datepartage ()
		{
			    String dateToday=null;
			    DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");  
			    Date date = new Date();
			    dateToday=dateFormat.format(date);
			    return dateToday;
		}
		
		
		// methode qui va retourner la liste de toutes les offres reçues
		public ArrayList<VisiteurModel> listeoffreVis()
		{
			ArrayList<VisiteurModel> arryu = new ArrayList<VisiteurModel>();
			bdd = new ConnexionBD();
			
			try {
				stat = bdd.connect().createStatement();
				resultat = stat.executeQuery("select idvis,reference,email,datepart,lienoffre from visiteur");
								
				while(resultat.next())
				{
					
					VisiteurModel utili = new VisiteurModel();	
					utili.setIdvis(resultat.getInt("idvis"));
					utili.setReference(resultat.getString("reference"));
					utili.setEmail(resultat.getString("email"));
					utili.setDatePart(resultat.getString("datepart"));
					utili.setLienoffre(resultat.getString("lienoffre"));
					arryu.add(utili);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//System.out.println("taille des liens"+arryu.size());
			return arryu;
		}
		
		// Méthode permettant de faire une suppression
		public void DeleteOffre(int idvis) {
			bdd = new ConnexionBD();
			try {
				PreparedStatement ps = bdd.connect().prepareStatement("delete from visiteur where idvis=?");
				ps.setInt(1, idvis);
				ps.executeUpdate();
				ps.close();	
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
		
		//Méthode permettant de récupérer le lien de l'offre via son id du visiteur
		public String RecupererLienOffre(int idvis) {
			//System.out.println(idvis);
			bdd = new ConnexionBD();
			String libelle = "";
			try {
				PreparedStatement stat = bdd.connect().prepareStatement("select lienoffre from visiteur where idvis=?");
				stat.setInt(1, idvis);
				resultat = stat.executeQuery();
				while(resultat.next()){         
					libelle = resultat.getObject(1).toString();
			      }
			} 
			catch (SQLException ex) {
					ex.printStackTrace();
				}
			//System.out.println(libelle);
				return libelle;
	}		
	
		// Méthode permettant de convertir un string en date
		public Date convert (String dat) {
			
			SimpleDateFormat sfd = new SimpleDateFormat("dd/MM/yyyy");
			Date dt = null;
			try {
				dt = sfd.parse(dat);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
			       return dt;
		}
		
			// Méthode permettant d'ajouter une nouvelle offre (visiteur)
	public void ajouter(VisiteurModel visiteurm) {
		 try {
			 bdd = new ConnexionBD();
		
		PreparedStatement ps=bdd.connect().prepareStatement("INSERT INTO visiteur (reference,email,datepart,lienoffre) VALUES(?,?,?,?)");
		ps.setString(1, visiteurm.getReference());
		ps.setString(2, visiteurm.getEmail());
		ps.setString(3, datepartage ());		
		ps.setString(4, visiteurm.getLienoffre());	
		int val = ps.executeUpdate();
	
		System.out.println("on a reussi controlleur"+val);
		 }
		 	catch(Exception ex){
		 			System.out.println("erreur ajoutercontruser"+ex.getMessage());
		 		}
	}
}
