<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-3.3.7-dist/js/bootstrap.min.js">
<link href="styles.css" rel="stylesheet">



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
	integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
	integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
	crossorigin="anonymous"></script>


<script>
    
   
    
   
    
    
    function enregistrer() //enregistrer les options, fonction appelée par le click sur le bouton
    {

         /* localStorage['matricule']       = document.getElementById('matricule').value; */
         localStorage['nom']            = document.getElementById('nom').value;
         localStorage['prenom']         = document.getElementById('prenom').value;
         localStorage['date'] = document.getElementById('date').value;
         localStorage['adresse']        = document.getElementById('adresse').value;
         localStorage['numsecu']           = document.getElementById('numsecu').value;        
         localStorage['dep']           = document.getElementById('dep').value; 
         localStorage['fonction']           = document.getElementById('fonction').value; 
         localStorage['phone']           = document.getElementById('phone').value;    
         
 
    }
    	    
    	    function valider()
            {
            	document.forms[0].submit();
            }
    
    	    $(document).ready(function() {
    	        

    	        
    	    	 $("#myBtn").click(function(e) {
    	    	        var inst = $("#addForm").data('bootstrapValidator');
    	    	        inst.validate()
    	    	        if (inst.isValid()) {
    	    	            e.preventDefault();
    	    	            //Passage au localStorage pour l'enregistrement local            
    	    	              var saisie_nom         = localStorage.getItem('nom');
    	         			var saisie_prenom     = localStorage.getItem('prenom');
    	         var saisie_date         = localStorage.getItem('date');
    	         var saisie_adresse     = localStorage.getItem('adresse');
    	         var saisie_numsecu     = localStorage.getItem('numsecu');
    	         var saisie_dep     = localStorage.getItem('dep');
    	         var saisie_fonction     = localStorage.getItem('fonction');
    	         var saisie_phone     = localStorage.getItem('phone');



    	         $('#nomModal').attr('value', saisie_nom);
    	         $('#prenomModal').attr('value', saisie_prenom);
    	         $('#dateModal').attr('value', saisie_dtn);
    	         $('#adresseModal').attr('value', saisie_adresse);
    	         $('#numsecuModal').attr('value', saisie_numsecu);
    	         $('#depModal').attr('value', saisie_dep);
    	         $('#fonctionModal').attr('value', saisie_fonction);
    	         $('#posteModal').attr('value', saisie_phone);
    	    	            

    	           $("#myModal").modal('show');
    	                } else {
    	                    $("#myModal").modal('hide');
    	                }
    	            });

    	            $('#addForm').bootstrapValidator({
    	                    fields: {
    	                        nom: {
    	                            validators: {
    	                                stringLength: {
    	                                    min: 2,
    	                                },
    	                                notEmpty: {
    	                                    message: 'Le nom est obligatoire'
    	                                }
    	                            }
    	                        },
    	                        prenom: {
    	                            validators: {
    	                                stringLength: {
    	                                    min: 2,
    	                                },
    	                                notEmpty: {
    	                                    message: 'Le prénom est obligatoire'
    	                                }
    	                            }
    	                        },
    	                        adresse: {
    	                            validators: {
    	                                notEmpty: {
    	                                    message: 'L\'adresse est obligatoire'
    	                                }
    	                            }
    	                        },
    	                        date_naissance: {
    	                            validators: {
    	                                notEmpty: {
    	                                    message: 'La date de naissance est obligatoire'
    	                                }
    	                            }
    	                        },
    	                        secu: {
    	                            validators: {
    	                                integer: {
    	                                    min: 15,
    	                                    message: 'Il vous faut mettre les 15 chiffres de votre carte vital',
    	                                },
    	                                notEmpty: {
    	                                    message: 'Le numéro de sécurité social est obligatoire'
    	                                }
    	                            }
    	                        }
    	                    }
    	                })
    	                /*
    	                .on('success.form.bv', function(e) {
    	                    $('#success_message').slideDown({
    	                            opacity: "show"
    	                        }, "slow") // Do something ...
    	                    $('#addForm').data('bootstrapValidator').resetForm();
    	                    // Prevent form submission
    	                    e.preventDefault();
    	                    // Get the form instance
    	                    var $form = $(e.target);
    	                    // Get the BootstrapValidator instance
    	                    var bv = $form.data('bootstrapValidator');
    	                });
    	                */
    	        });
    	    	        
    	
    
   
</script>

<style>
.bouton {
	border: 1px solid #000;
	background: red;
	color: white;
	text-decoration: none;
	border-radius: 5px;
	position: auto;
}

h1 {
	margin-left: 10px
}

form {
	margin-top: 100px;
}
</style>

</head>
<body>

	<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
		<a class="navbar-brand" href="#">Login</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExampleDefault"
			aria-controls="navbarsExampleDefault" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarsExampleDefault">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link"
					href="<%=request.getContextPath()%>/collaborateurs/lister">Collaborateur <span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link"
					href="Statistique.html">Statistique</a></li>
				<li class="nav-item"><a class="nav-link" href="Activite.html">Activité</a>
				</li>
			</ul>
		</div>
	</nav>

	<form id="addForm" role="form" method="POST" action="<%=request.getContextPath()+"/collaborateurs/ajouter"%>" data-toggle="validator">
		<div>
			<h1>Nouveau Collaborateur</h1>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-3 col-offset-3">
					<label>nom</label>
				</div>
				<div class="col-6">
					<input type="text" class="form-control" id="nom" name="nom"
						required>
					<div class="invalid-feedback">votre nom</div>
				</div>
			</div>
			<div class="row">
				<div class="col-3 col-offset-3">
					<label>Prénom</label>
				</div>
				<div class="col-6">
					<input type="text" class="form-control" id="prenom" name="prenom"
						required>
					<div class="invalid-feedback">votre prénom</div>
				</div>
			</div>
			<div class="row">
				<div class="col-3 col-offset-3">
					<label>Date de naissance</label>
				</div>
				<div class="col-6">
					<input type="date" class="form-control" id="date" name="date"
						required>
					<div class="invalid-feedback">votre date de naissance</div>
				</div>
			</div>
			<div class="row">
				<div class="col-3 col-offset-3">
					<label>Adresse</label>
				</div>
				<div class="col-6">
					<input type="text" class="form-control" id="adresse" name="adresse"
						required>
					<div class="invalid-feedback">votre adresse</div>
				</div>
			</div>
			<div class="row">
				<div class="col-3 col-offset-3">
					<label>Derpartement</label>
				</div>
				<div class="col-6">
					<input type="text" class="form-control" id="dep" name="dep"
						required>
					<div class="invalid-feedback">votre derpartement</div>
				</div>
			</div>
			<div class="row">
				<div class="col-3 col-offset-3">
					<label>Numéro de sécuriter social</label>
				</div>
				<div class="col-6">
					<input type="text" class="form-control" id="numsecu" name="numsecu"
						required>
					<div class="invalid-feedback">votre Numéro de sécuriter
						social</div>
				</div>
			</div>
			<div class="row">
				<div class="col-3 col-offset-3">
					<label>Téléphone</label>
				</div>
				<div class="col-6">
					<input type="text" class="form-control" id="phone" name="phone"
						required>
					<div class="invalid-feedback">votre Numéro de Téléphone</div>
				</div>
			</div>
			<div class="row">
				<div col-2 offset-5>
					<a href="<%=request.getContextPath()%>/collaborateurs/lister" class="bouton">Annuler</a>
				</div>
				<button type="submit" class="btn btn-primary btn_add col-1 offset-7" id="myBtn" onclick="enregistrer()">Créer</button>
				
				<!--  	<input id="myModal" type="button"
					class="btn btn-primary col-1 offset-8" value="Créer"
					onclick="valider()">-->
			</div>
		</div>


		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Nouveau
							Collaborateur</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">

						Vous êtes sur le point de crée un nouveau Collaborateur :<br><br>
			
						<label>nom</label><input type="text" class="form-control" id="nomModal" name="nom"> 
						<label>Prénom</label><input type="text" class="form-control" id="prenomModal" name="prenom">
						<label>Date de naissance</label><input type="text" class="form-control" id="dateModal" name="date"> 
						<label>Derpartement</label><input type="text" class="form-control" id="depModal" dep"" name="dep">
						<label>Numéro de sécuriter social</label><input type="text" class="form-control" id="numsecuModal" name="numsecu"> 
						<label>fonction</label><input type="text" class="form-control" id="posteModal" name="poste">
						<label>Téléphone</label><input type="text" class="form-control"id="TéléphoneModal" name="phone"> 
						<label>Adresse</label><input type="text" class="form-control" id="AdresseModal" name="Adresse">

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" onclick="valider()">sauvegarder
						</button>
					</div>
				</div>
			</div>
		</div>

	</form>




</body>
</html>