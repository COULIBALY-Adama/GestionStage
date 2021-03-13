package com.tpgestionprojet.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.tpgestionprojet.controleur.VisiteurControl;

@WebServlet("/RecupLienOffreServlet")
public class RecupLienOffreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RecupLienOffreServlet() {
        super();
        
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
				VisiteurControl vst = new VisiteurControl();
				int idvis = Integer.parseInt(request.getParameter("idvis"));
				String libelle = vst.RecupererLienOffre(idvis);
				int idvise = idvis ; 
				request.setAttribute("lib", libelle);
				request.setAttribute("idvise", idvise);
				
				HttpSession session = request.getSession ();
		    	session.setAttribute("ide", idvise);
				
				this.getServletContext().getRequestDispatcher("/WEB-INF/OffreVue.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
