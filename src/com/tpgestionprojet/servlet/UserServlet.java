package com.tpgestionprojet.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tpgestionprojet.controleur.UserControl;
import com.tpgestionprojet.model.UserModel;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/UserVue.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String fonction = request.getParameter("fonction");
		
		UserModel users = new UserModel();
		UserControl cont = new UserControl();
		
		users.setNom(nom);
		users.setPrenom(prenom);
		users.setEmail(email);
		users.setPassword(password);
		users.setFonction(fonction);
		
		cont.ajouter(users);
		
		String redirectURL = "/GestionStage/accueil";
	    response.sendRedirect(redirectURL);
		
	}
	

}
