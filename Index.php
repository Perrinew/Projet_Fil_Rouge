<?php
$bdd = new PDO('mysql:host=localhost;dbname=Autoscoot','root','root');
$query = 'SELECT * FROM Vehicules inner join Photos on Vehicules.ID_Vehicule = Photos.FK_ID_Vehicule
inner join Etat_Vehicule on Etat_Vehicule.ID_Etat = Vehicules.ID_Etat
inner join Vendeurs on Vendeurs.FK2_ID_Vehicule = Vehicules.ID_Vehicule';

$allVehicules = $bdd->query($query);
session_start();
//var_dump($allVehicules);

if(isset($_GET['Marque']) or isset($_GET['Modele']) or isset($_GET['Vendeur']) or isset($_GET['Type'])) {
  $Type = htmlspecialchars($_GET['Type']);
  $Marque = htmlspecialchars($_GET['Marque']);
  $Modele = htmlspecialchars($_GET['Modele']);
  $Vendeur = htmlspecialchars($_GET['Vendeur']);
  $conditions = array();

  if(!empty($Type)){
    $conditions[] = 'Type like "%'.$Type.'%"';
  }

  if(!empty($Marque)){
    $conditions[] = 'Nom_Marque like "%'.$Marque.'%"';
  }

  if(!empty($Modele)){
    $conditions[] = 'Modele like "%'.$Modele.'%"';
  }

  if(!empty($Vendeur)){
    $conditions[] = 'Vendeur like "%'.$Vendeur.'%"';
  }
  $sql = $query;
  if(count($conditions) > 0) {
    $sql .= " WHERE " . implode(' AND ', $conditions);
  }
  $allVehicules = $bdd->query($sql);
  
}

?>

<!doctype html>
<html>
<head>
<title>
VROOMISSIMO
</title>
<link rel="stylesheet" href="style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<meta charset="utf-8">
</head>
<body>
<div class="titre">
<h1>
VROOMISSIMO
</h1>
</div>
<fieldset class=" col-lg cadre mb-5" >
<form method="GET" class="Barre_de_recherche">
  <label for="Type">Rechercher par: </label>
  <input type="search" name="Type" class="form-control mb-3" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" placeholder="type">
  <input type="search" name="Marque" class="form-control mb-3" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" placeholder="marque">
  <input type="search" name="Modele" class="form-control mb-3" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" placeholder="modele">
  <input type="search" name="Vendeur" class="form-control mb-3" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" placeholder="type de vendeur">
  <input class="mb-3" type="submit" name="Envoyer">

</form>
</fieldset>
<div class="affichage">
 
<?php 
if($allVehicules->rowCount() > 0){
       while($Vehicule = $allVehicules->fetch()){
echo<<<html

    <div class="card_alignement" style="width: 600px;">  

    <div class="card-body mb-5" >
    <fieldset class="cadre2">
    
    <img src="{$Vehicule['Photo']}" class="card-img-top" alt="...">
  
    <p>Marque: {$Vehicule['Nom_Marque']}</p>

    <p>Modele: {$Vehicule['Modele']}</p>

    <p>Etat: {$Vehicule['Etat']}</p>

    <p>Prix: {$Vehicule['Prix']}€</p>

    <p>Vendeur: {$Vehicule['Vendeur']}</p>

    <p>Code postal: {$Vehicule['Code_Postale']}</p>

    <p class="card-body mb-5">Ville: {$Vehicule['Ville']}</p>  
   
    <p> Coordonnées du Vendeur: </p>

    <p>Nom : {$Vehicule['Nom_Vendeur']}</p>     

    <p>Prenom : {$Vehicule['Prenom_Vendeur']}</p>

    <p>Téléphone : {$Vehicule['Num_Tel']}</p>
    html;

    ?>

</div> 
    </div>  
    </fieldset>
  </div>
 <?php
       }
       
      }else{
         ?>
         <script>
         alert("Aucun vehicule n'a été trouvé")
         </script>
         <?php 
     }

?>

</div>
<?php

include_once('footer.php');
?>

</body>
</html>
