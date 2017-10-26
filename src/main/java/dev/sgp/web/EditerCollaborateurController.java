package dev.sgp.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




/**
 * Servlet implementation class EditerCollaborateurController
 */
public class EditerCollaborateurController extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditerCollaborateurController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String matricule = request.getParameter("matricule");
		String titre = request.getParameter("titre");
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		StringBuilder error = new StringBuilder();
		
		PrintWriter out = response.getWriter();
		
		response.setContentType("text/html");
		// code HTML ecrit dans le corps de la reponse
		response.getWriter().write("<h1>Edition de collaborateur</h1>"
				+ "<label> Matricule : " + matricule +" <label>"
				+ "<ul>"
				+ "<li> POST/collaborateur/editer</li>" 
				+ "<ul>" 
				+ "<li> La servlet vérifie que les parametres suivants sont renseigner :</li>" 
				+ "<ul>" 
				+ "<li>matricule , </li>" 
				+ "<li> titre,</li>" 
				+ "<li> nom,</li>" 
				+ "<li> prenom,</li>" 
				+ "</ul>"
				+ "</ul>"
				+ "</ul>");
		
		if(matricule == null || titre == null  || nom == null  || prenom == null ){
			
			error.append("Les paramètres suivants sont incorrects :").toString();
			if(matricule == null){
				error.append(" matricule ").toString();
			}
			if(titre==null){
				error.append(" titre ").toString();
			}
			if(nom==null){
				error.append(" nom ").toString();
			}
			if(prenom==null){
				error.append(" prenom").toString();
			}
			response.sendError(400,error.toString());
			
			
		}else{
			out.println("Creation d’un collaborateur avec les informations suivantes :");
			out.println("matricule="+ matricule +",titre="+ titre +",nom="+ nom +",prenom="+ prenom + ".");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
