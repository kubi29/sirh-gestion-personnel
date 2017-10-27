package dev.sgp.entite;

public class Departement {

	Integer id;
	
	String nom;
	
	public Departement(int id , String nom){
		
		setId(id);
		setNom(nom);
	}

	

	public Departement() {
		// TODO Auto-generated constructor stub
	}



	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}
	
	
	
}
