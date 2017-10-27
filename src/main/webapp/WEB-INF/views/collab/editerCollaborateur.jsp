<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    
    
        <link href="styles.css" rel="stylesheet">
        <script src="javascript.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
      <script>
     $(document).ready(function() {
		$("#tIdentity").click(function() {
					
                    $("#identity").show();
                    $("#poste").hide();
                    $("#cb").hide();
                });
                $("#tPoste").click(function() {
					
                    $("#identity").hide();
                    $("#poste").show();
                    $("#cb").hide();
                });
                $("#tCb").click(function() {
					
                    $("#identity").hide();
                    $("#poste").hide();
                    $("#cb").show();
                });
                $("#identity").hide();
                    $("#poste").hide();
                    $("#cb").hide();
            });
    </script>

     
     <style type="text/css">
     
     form {
     
     margin-top: 100px;
     
     }
     
     img {
     
     width: 100%;
     margin-left: 10px;
     
     }
     
     </style>
     
    </head>
        <body>
                <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
                    <a class="navbar-brand" href="#">Login</a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                                <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                                    <ul class="navbar-nav mr-auto">
                                        <li class="nav-item">
                                                        <a class="nav-link" href="ListeCollaborateur.html">Collaborateur <span class="sr-only">(current)</span></a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="Statistique.html">Statistique</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="Activite.html">Activité</a>
                                        </li>
                                    </ul>
                                </div>
                            </nav>

        <form>
        
            <div class="row">
                <div class="col-4">
        
                               <img src="http://media-cache-ak0.pinimg.com/736x/76/a6/f2/76a6f20edc68412230782794b4887786.jpg">
        
                </div>
                <div class="col-8">
                              
                               
                                                <div class="row">
                                                    <div class="col-6" ><h1> NOM Prénom - Matricul  </h1></div>
                                                    <input type="checkbox" aria-label="...">
                                                    <div class="col-2"><label>Désactiver</label></div> 
                                                </div>
                                               
                                
                                                <div class="container" id="tIdentity">
                                                        <li class="list-group-item">
                                                            <p>Identité</p>
                                                        </li>
                                                </div>
                                                <div class="container" id="identity">
                                                        <li class="list-group-item">
                                                                
                                                        <div class="row">
                                                                <div class="col-4 offset-1" > <label>Civilité</label></div>
                                                                <div class="col-6" >
                                                                	<select class="col-12">
                                                                                <option>Mr.</option>
                                                                                <option>Mme</option>
                                                                                <option>Mlle</option>
                                                                </select>
                                                                
                                                                </div>
                                                        </div>
                                                         <div class="row">
                                                            <div class="col-4 offset-1" > <label>Nom</label></div>
                                                            <div class="col-6" ><input type="text" class="form-control" ></div>
                                                        </div>
                                                        <div class="row">
                                                                <div class="col-4 offset-1" > <label>Prénom</label></div>
                                                                <div class="col-6" ><input type="text" class="form-control" ></div>
                                                        </div>
                                                        <div class="row">
                                                                <div class="col-4 offset-1" > <label>Date de naissance</label></div>
                                                                <div class="col-6" ><input type="text" class="form-control" ></div>
                                                        </div>
                                                        <div class="row">
                                                                <div class="col-4 offset-1" > <label>Adresse</label></div>
                                                                <div class="col-6" ><textarea name="textarea"  rows="5" cols="70"></textarea></div>
                                                        </div>
                                                        <div class="row">
                                                                <div class="col-4 offset-1" > <label>Numéro de sécuriter social</label></div>
                                                                <div class="col-6" ><input type="text" class="form-control" ></div>
                                                        </div>
                                                        <div class="row">
                                                                <div class="col-4 offset-1" > <label>Téléphone</label></div>
                                                                <div class="col-6" ><input type="text" class="form-control" ></div>
                                                        </div>
                                                    
                                                        </li>
                                                </div>
                                
                                                <div class="container" id="tPoste">
                                                        <li class="list-group-item">
                                                            <p>Poste</p>
                                                        </li>
                                                </div>
                                
                                                <div class="container" id="poste">
                                                    <li class="list-group-item">
                                                    
                                                    	<div class="row">
                                                            <div class="col-4 offset-1" > <label>intitulePoste </label></div>
                                                            <div class="col-6" ><input type="text" class="form-control" id="" name=""></div>
                                                        </div>
                                                        <div class="row">
                                                                <div class="col-4 offset-1" > <label>Département</label></div>
                                                                <div class="col-6" >
                                                                <select class="col-12">
                                                                                <option>1</option>
                                                                                <option>2</option>
                                                                                <option>3</option>
                                                                                <option>4</option>
                                                                </select>
                                                             </div>
                                                            </div>
                                                    </li>
                                                </div>
                                
                                                <div class="container" id="tCb">
                                                        <li class="list-group-item">
                                                            <p>Coordonées Bancaires</p>
                                                        </li>
                                                </div>
                                
                                            <div class="container" id="cb">
                                                <li class="list-group-item">
                                                    <div class="row">
                                                            <div class="col-4 offset-1" > <label>IBAN</label></div>
                                                            <div class="col-6" ><input type="text" class="form-control" id="idan" name="idan"></div>
                                                        </div>
                                                     <div class="row">
                                                        <div class="col-4 offset-1" > <label>BIC</label></div>
                                                        <div class="col-6" ><input type="text" class="form-control" id="bic" name="bic"></div>
                                                    </div>
                                                </li>
                                                   
                                        </div>
                                        <div class="row">
                                                        <input id="Ajouter" type="button" class="btn btn-primary col-2 offset-9" value="Sauvegarder"></input> 
                                        </div>
                        </div>
                </div>
        </form>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</body>
</html>