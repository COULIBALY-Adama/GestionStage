package com.tpgestionprojet.servlet;

import java.io.IOException;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tpgestionprojet.controleur.VisiteurControl;

@WebServlet("/SupprOffreServlet")
public class SupprOffreServlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    
    public SupprOffreServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		VisiteurControl vts = new VisiteurControl();
		
// Méthode permettant de supprimer une offre
		
		 int  idvis = Integer.parseInt(request.getParameter("idvis"));
		 vts.DeleteOffre(idvis);
		  
		 	request.setAttribute("ListeLiens", vts.listeoffreVis());
			this.getServletContext().getRequestDispatcher("/WEB-INF/ListeLiens.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
