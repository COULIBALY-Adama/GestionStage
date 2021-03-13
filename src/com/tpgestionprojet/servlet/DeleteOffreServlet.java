package com.tpgestionprojet.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tpgestionprojet.controleur.OffreControl;
import com.tpgestionprojet.controleur.VisiteurControl;

@WebServlet("/DeleteOffreServlet")
public class DeleteOffreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteOffreServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OffreControl offcont = new OffreControl();
			
				int  idof = Integer.parseInt(request.getParameter("idof"));
				 offcont.DeleteOffreCreer(idof);
				  
				 	request.setAttribute("listeoffre", offcont.listeoffres());
					this.getServletContext().getRequestDispatcher("/WEB-INF/ListeOffre.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
