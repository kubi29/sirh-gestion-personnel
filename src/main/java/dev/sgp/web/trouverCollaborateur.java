package dev.sgp.web;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class trouverCollaborateur
 */
public class trouverCollaborateur extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	private DepartementService depService = Constantes.DEP_SERVICE;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public trouverCollaborateur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Departement> departements = depService.listeDepartements();
		List<Collaborateur> collaborateurs = collabService.listerCollaborateurs();
		
		
		String id = req.getParameter("matricul");

		if (id != null && !id.isEmpty()) {
			for (Collaborateur collaborateur : collaborateurs) {
				collaborateur.getMatricule().equals("matricul");
				req.setAttribute("collab", collaborateur);
			}
		}
		
		
		req.getRequestDispatcher("/collaborateurs/editer")
		.forward(req, resp);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
