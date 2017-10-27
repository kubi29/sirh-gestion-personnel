package dev.sgp.entite;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZonedDateTime;
import java.util.Date;

public class Collaborateur {
	
	String matricule;
	
	String nom;
	
	String prenom;
	
	LocalDate dateDeNaissance;
	
	String adresse;
	
	String numeroSecuriteSociale;
	
	String emailPro;
	
	String photo;
	
	LocalDateTime  dateHeureCreation;
	
	Boolean actif;
	String telephone;
	
	String intitulePoste;
	Departement departement;
	
	 public Collaborateur() {
		 
	}
	
	public Collaborateur(String matricule ,String nom, String prenom, LocalDate date ,String adresse , String numsec  , String email , String telephone , LocalDateTime  dateHeureCreation ,Boolean actif )	{
		
		setMatricule(matricule);
		setNom(nom);
		setPrenom(prenom);
		setDateDeNaissance(date);
		setAdresse(adresse);
		setNumeroSecuriteSociale(numsec);
		setEmailPro(email);
		setTelephone(telephone);
		setDateHeureCreation(dateHeureCreation);
		setActif(actif);
		
	}

	

	public String getMatricule() {
		return matricule;
	}

	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}

	public String getAdresse() {
		return adresse;
	}

	public String getIntitulePoste() {
		return intitulePoste;
	}

	public void setIntitulePoste(String intitulePoste) {
		this.intitulePoste = intitulePoste;
	}

	public Departement getDepartement() {
		return departement;
	}

	public void setDepartement(Departement departement) {
		this.departement = departement;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String téléphone) {
		this.telephone = téléphone;
	}

	

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public LocalDate getDateDeNaissance() {
		return dateDeNaissance;
	}

	public void setDateDeNaissance(LocalDate dateNaissance) {
		this.dateDeNaissance = dateNaissance;
	}

	public String getNumeroSecuriteSociale() {
		return numeroSecuriteSociale;
	}

	public void setNumeroSecuriteSociale(String numeroSecuriteSociale) {
		this.numeroSecuriteSociale = numeroSecuriteSociale;
	}

	public String getEmailPro() {
		return emailPro;
	}

	public void setEmailPro(String emailPro) {
		this.emailPro = emailPro;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public LocalDateTime  getDateHeureCreation() {
		return dateHeureCreation;
	}

	public void setDateHeureCreation(LocalDateTime  dateHeureCreation) {
		this.dateHeureCreation = dateHeureCreation;
	}

	public Boolean getActif() {
		return actif;
	}

	public void setActif(Boolean actif) {
		this.actif = actif;
	}
	
	
	
}
