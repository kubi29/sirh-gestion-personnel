package dev.sgp.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.entite.Departement;
import dev.sgp.service.CollaborateurService;
import dev.sgp.service.DepartementService;
import dev.sgp.util.Constantes;




/**
 * Servlet implementation class EditerCollaborateurController
 */
public class EditerCollaborateurController extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	private DepartementService depService = Constantes.DEP_SERVICE;
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
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		List<Departement> departements = depService.listeDepartements();
		List<Collaborateur> collaborateurs = collabService.listerCollaborateurs();
		
		String matricule	= req.getParameter("matricul");
		
		String name = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		LocalDate dateNaissance	= LocalDate.parse(req.getParameter("date"), DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		LocalDateTime dateCreat	= LocalDateTime.now();
		String adresse = req.getParameter("adresse");
		String numsecu = req.getParameter("numsecu");
		String email = ( name + "." + prenom +"@societe.com");

		String departement =req.getParameter("dep");
		
		String telephone = req.getParameter("phone");
		
		String poste =req.getParameter("fonction");
	
		
		
		req.getRequestDispatcher("/WEB-INF/views/collab/editerCollaborateur.jsp")
		.forward(req, resp);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		
	}

}
