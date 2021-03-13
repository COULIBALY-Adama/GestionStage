package com.tpgestionprojet.controleur;

import java.sql.Connection;	
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import com.tpgestionprojet.model.OffreModel;
import com.tpgestionprojet.model.VisiteurModel;

public class OffreControl {
	ConnexionBD bdd;
	Connection connec;
	Statement stat;
	ResultSet resultat;
	
	// Méthode qui retourne id d'un administrateur
	public int RecupIdAdmin(String email, String password) {
		//System.out.println(idvis);
		bdd = new ConnexionBD();
		int idadminis =0;
		//String nomadminis ="";
	
		try {
			PreparedStatement stat = bdd.connect().prepareStatement("select idus from usersi where email=? and password = ?");
			stat.setString(1, email);
			stat.setString(2, password);
			resultat = stat.executeQuery();
			while(resultat.next()){ 
				idadminis =  ((Number) resultat.getObject(1)).intValue();				
		      }
		} 
		catch (SQLException ex) {
				ex.printStackTrace();
			}
		//System.out.println(libelle);
			return idadminis;
}		
	// Méthode qui retourne le nom d'un administrateur
	public String RecupNomAdmin(String email, String password) {
		//System.out.println(idvis);
		bdd = new ConnexionBD();
		String nomadminis ="";
	
		try {
			PreparedStatement stat = bdd.connect().prepareStatement("select nom from usersi where email=? and password = ?");
			stat.setString(1, email);
			stat.setString(2, password);
			resultat = stat.executeQuery();
			while(resultat.next()){ 
				//idadminis =  ((Number) resultat.getObject(1)).intValue();
				//idadminis = Integer.parseInt(resultat.getObject(1).toString());
				nomadminis = resultat.getObject(1).toString();
		      }
		} 
		catch (SQLException ex) {
				ex.printStackTrace();
			}
		//System.out.println(libelle);
			return nomadminis;
}	
	
	// Méthode pour récupérer la liste des emails des étudiant
		public String RecupEmail() {
			//System.out.println(idvis);
			bdd = new ConnexionBD();
			String emailetudiant ="";
		
			try {
				PreparedStatement stat = bdd.connect().prepareStatement("select studentemail from etudiant");
				//stat.setString(1, studentemail);
				resultat = stat.executeQuery();
				while(resultat.next()){ 
					emailetudiant = resultat.getObject(1).toString();
			      }
			} 
			catch (SQLException ex) {
					ex.printStackTrace();
				}
			//System.out.println(libelle);
				return emailetudiant;
	}	
	
	
	// methode qui va retourner la liste de toutes les offres crées 
	public ArrayList<OffreModel> listeoffres() {
		ArrayList<OffreModel> arry = new ArrayList<OffreModel>();
		bdd = new ConnexionBD();	
				try {
					stat = bdd.connect().createStatement();
					resultat = stat.executeQuery("select idof,titre,description,duree,debut,lieu,service,categorie,lienoffres,idadmin from offreur");
									
					while(resultat.next())
					{
						
						OffreModel utilis = new OffreModel();	
						utilis.setIdof(resultat.getInt("idof"));
						utilis.setTitre(resultat.getString("titre"));
						utilis.setDescription(resultat.getString("description"));
						utilis.setDuree(resultat.getString("duree"));
						utilis.setDebut(resultat.getString("debut"));
						utilis.setLieu(resultat.getString("lieu"));
						utilis.setService(resultat.getString("service"));
						utilis.setCategorie(resultat.getString("categorie"));
						utilis.setLienoffres(resultat.getString("lienoffres"));;
						//utilis.setIdvisiteur(resultat.getInt("idvisiteur"));
						utilis.setIdadmin(resultat.getInt("idadmin"));
						
						arry.add(utilis);
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
				return arry;
			}
	
		public void ajouter(OffreModel offrem) {
					try {
							bdd = new ConnexionBD();
		
		
		PreparedStatement ps=bdd.connect().prepareStatement("INSERT INTO offreur (titre,description,duree,debut,lieu,service,categorie,lienoffres,idadmin) VALUES(?,?,?,?,?,?,?,?,?)");
		ps.setString(1, offrem.getTitre());
		ps.setString(2, offrem.getDescription());
		ps.setString(3, offrem.getDuree());
		ps.setString(4, offrem.getDebut());
		ps.setString(5, offrem.getLieu());
		ps.setString(6, offrem.getService());
		ps.setString(7, offrem.getCategorie());
		ps.setString(8, offrem.getLienoffres());
		//ps.setInt(8, offrem.getIdvisiteur());
		ps.setInt(9, offrem.getIdadmin());
		
		 ps.executeUpdate();
	
		 }
		 
		 catch(Exception ex)
	 		{
	 			System.out.println("erreur ajoutercontruser"+ex.getMessage());
	 		}
	}
		
 // Méthode permettant de modifier l'offres
	/*public void ModifierOffre(OffreModel offrem) {
			try {
					bdd = new ConnexionBD();

		PreparedStatement ps=bdd.connect().prepareStatement("UPDATE offreur set titre=?,description=?,duree=?,debut=?,lieu=?,service=?,categorie=? where idof=?");
	ps.setString(1, offrem.getTitre());
	ps.setString(2, offrem.getDescription());
	ps.setString(3, offrem.getDuree());
	ps.setString(4, offrem.getDebut());
	ps.setString(5, offrem.getLieu());
	ps.setString(6, offrem.getService());
	ps.setString(7, offrem.getCategorie());
	ps.setInt(8, offrem.getIdvisiteur());
	ps.setInt(9, offrem.getIdadmin());

	ps.executeUpdate();

 }
 
			catch(Exception ex)
		{
			System.out.println("erreur ajoutercontruser"+ex.getMessage());
		}
}*/
		
		// Méthode permettant de faire une suppression (Offres créées)
				public void DeleteOffreCreer(int idof) {
					bdd = new ConnexionBD();
					try {
						PreparedStatement ps = bdd.connect().prepareStatement("delete from offreur where idof=?");
						ps.setInt(1, idof);
						ps.executeUpdate();
						ps.close();	
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
				
				public ArrayList<OffreModel> searchoffres(String critere, String search) {
					ArrayList<OffreModel> arry = new ArrayList<OffreModel>();
					bdd = new ConnexionBD();	
							try {
								stat = bdd.connect().createStatement();
						        String sql = "select * from offreur WHERE "+critere;
								resultat = stat.executeQuery(sql+" LIKE'%"+search+"%'");
										
								while(resultat.next())
								{
									
									OffreModel utilis = new OffreModel();	
									utilis.setIdof(resultat.getInt("idof"));
									utilis.setTitre(resultat.getString("titre"));
									utilis.setDescription(resultat.getString("description"));
									utilis.setDuree(resultat.getString("duree"));
									utilis.setDebut(resultat.getString("debut"));
									utilis.setLieu(resultat.getString("lieu"));
									utilis.setService(resultat.getString("service"));
									utilis.setCategorie(resultat.getString("categorie"));
									utilis.setLienoffres(resultat.getString("lienoffres"));;
									//utilis.setIdvisiteur(resultat.getInt("idvisiteur"));
									utilis.setIdadmin(resultat.getInt("idadmin"));
									
									arry.add(utilis);
								}
								
							} catch (SQLException e) {
								e.printStackTrace();
							}
							return arry;
						}
				
				// Méthode qui retourne le lien d'une offre
				public String RecupLien(int id) {
					
					bdd = new ConnexionBD();
					String lien ="";
				
					try {
						PreparedStatement stat = bdd.connect().prepareStatement("select lienoffre from visiteur, offreur where offreur.idvisiteur=?");
					
						resultat = stat.executeQuery();
						while(resultat.next()){ 
							//idadminis =  ((Number) resultat.getObject(1)).intValue();
							//idadminis = Integer.parseInt(resultat.getObject(1).toString());
							lien = resultat.getObject(1).toString();
					      }
					} 
					catch (SQLException ex) {
							ex.printStackTrace();
						}
					//System.out.println(libelle);
						return lien;
			}


}

