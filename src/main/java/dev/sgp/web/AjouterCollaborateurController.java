package dev.sgp.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

/**
 * Servlet implementation class AjouterCollaborateurController
 */
public class AjouterCollaborateurController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	static int compteur = 0;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjouterCollaborateurController() {
        super();
      
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/WEB-INF/views/collab/ajoutCollaborateur.jsp")
		.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		StringBuilder error = new StringBuilder();
		PrintWriter out = resp.getWriter();
		
		compteur = compteur + 1 ;
		String matricule	= "M"+compteur;
		
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
		
	
		if(matricule == null || name == null  || prenom == null  || dateNaissance == null || adresse==null || numsecu ==null || departement==null || telephone==null || poste==null){
			
			error.append("Les paramètres suivants sont incorrects :").toString();
			if(matricule == null){
				error.append(" matricule ").toString();
			}
			if(name==null){
				error.append(" name ").toString();
			}
			if(prenom==null){
				error.append(" prenom ").toString();
			}
			if(dateNaissance==null){
				error.append(" dateNaissance").toString();
			}
			if(adresse==null){
				error.append(" adresse").toString();
			}
			if(numsecu==null){
				error.append(" numsecu").toString();
			}
			if(departement==null){
				error.append(" departement").toString();
			}
			if(telephone==null){
				error.append(" telephone").toString();
			}
			if(poste==null){
				error.append(" poste").toString();
			}
			resp.sendError(400,error.toString());
			
			
		}else{
			out.println("Creation d’un collaborateur avec les informations suivantes :");
			out.println("matricule="+ matricule +",name="+ name +",prenom="+ prenom +",dateNaissance="+ dateNaissance
						+",adresse="+ adresse + ",numsecu="+ numsecu + ",departement="+ departement + 
						",telephone="+ telephone + ",poste="+ poste + ".");
			
			Collaborateur collaborateur = new Collaborateur( matricule , name,  prenom,  dateNaissance , adresse ,  numsecu ,  email ,  telephone ,   dateCreat , true );
		collabService.sauvegarderCollaborateur(collaborateur);
		
	
		List<Collaborateur> collaborateurs 	= collabService.listerCollaborateurs();
		req.setAttribute("listeCollab", collaborateurs);
		
		
		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp")
		.forward(req, resp);
		}
		
		
		
	}

}
