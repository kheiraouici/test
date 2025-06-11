<html>
 <head>
  <title>PHP-Test</title>
 </head>
 <body>
  <?php 
  /** je suis obligé de mettre en commentaires les créations de tables , il y a conflit entre la base de données sur phpmyadmin
       table focaccia
  CREATE TABLE IF NOT EXIST focaccia
  ('id_focaccia' int(11) not null ,
  'nom_focaccia' varchar(255) not null,
  'prix'         decimal  not null,
  primarykey('id_focaccia')
  engine:innodb 
  auto increment =30;
  )
        table achete
        CREATE TABLE IF NOT EXIST achete
        ('id_date' date primarykey);
        engine:innodb
        auto incremente=30,
        default charset=latin1;

        table appartient
        CREATE TABLE IF NOT EXIST appartient
        ('id_appartient' int(11) not null primarykey)

        table boisson
        CREATE TABLE IF NOT EXIST boisson
        ('id_boisson int(11) not null,
        'nom_boisson' varchar (255),
        'marque' varchar(255)not null )
        engine=innodb;
        auto increment=30;
        default charset=latin1;


        table client
       CREATE TABLE IF NOT EXIST client
       ('id_client' int(11) not null ,
       'nom' varchar(255) not null,
       'email' varchar(255) not null,
       'code_postale' decimale not null,
       primarykey ('id_client);
       engine=innodb,
       auto increment=30,
       default charset =latin1;

       table comprend
        CREATE TABLE IF NOT EXIST comprend

        table contient
        CREATE TABLE IF NOT EXIST contient
        ('id_contient' int(11) not null
        primarykey('id_contient'))
        engine=innodb,
        auto increment=30,
        default charset=latin1

        table est constitué
        CREATE TABLE IF NOT EXIST est constitue
        ('id_constitue' int(11) not null,
        primarykey('id_constitue'))
    
        table ingredient 
        CREATE TABLE IF NOT EXIST ingredient
        ('id_ingredient' int(11) not null,
        'nom' varchar(255) not null,)
        primarykey('id_ingredient)
        engine=innodb,
        default charset=latin1;
        
        table marque
        CREATE TABLE IF NOT EXIST marque
        ('id_marque' int(11) not null,
        'nom' varchar(255) not null,
        primarykey('id_marque'),
        engine=innodb,
        auto increment=30,
        default charset=latin1;
        
        table menu
        CREATE TABLE IF NOT EXIST menu
        ('id_menu' int (11) not null,
        'nom' varchar(255) not null,
        'prix' decimale not null,
        primarykey('id_menu')
        engine=innodb,
        auto increment=30);
       
  
  */
     /** connection à la base de données*/
    $BDD= mysqli_connect('localhost', 'cef_learning','ceflearning','tifosi');
         
         /*liste des noms de focaccia par ordre croissant*/
    $resultat=mysqli_query($BDD, 'SELECT nom_focaccia FROM focaccia ORDER BY nom_focaccia');
    while ($donnees=mysqli_fetch_assoc($resultat))
    {
        echo $donnees['id'];
        echo '';
        echo $donnees['nom_focaccia'];
        echo '<br/>';
    }
    /** 2 afficher le nombre total d'ingrédients */
$resultat = mysqli_query($BDD ,'SELECT COUNT (*) FROM ingredient');
while ($donnees=mysqli_fetch_assoc($resultat))
{
    echo $donnees['id_ingredient'];
    echo "";
    echo $donnees['nom']; 
    echo "<br />";
}
/** 3 afficher le prix moyen des focaccias */
$resultat = mysqli_query($BDD ,'SELECT AVG(prix) FROM focaccia');
while ($donnees=mysqli_fetch_assoc($resultat))
{
    echo $donnees['id_focaccia'];
    echo "";
    echo $donnees['nom_focaccia']; 
    echo "<br />";
}
/** 4 afficher la liste des boissons avec leur marque */
$resultat = mysqli_query($BDD ,'SELECT nom_boisson,marque FROM boisson');
while ($donnees=mysqli_fetch_assoc($resultat))
{
    echo $donnees['id_boisson'];
    echo "";
    echo $donnees['marque']; 
    echo "<br />";
}
/**5 afficher la liste des ingredients pour une racaccia , c'était difficle à troubver le bon code , alors j'ai fait comme cela*/
$resultat = mysqli_query($BDD ,'SELECT ingredient , raclaccia FROM focaccia');
while ($donnees=mysqli_fetch_assoc($resultat))
{
    echo $donnees['id_focaccia'];
    echo "";
    echo $donnees['ingredient']; 
    echo "<br />";
}
/** 6 afficher le nom et le nombre d'ingrédient pour chaque focaccia */
$resultat = mysqli_query($BDD ,'SELECT ingredient , nom_focaccia FROM focaccia');
while ($donnees=mysqli_fetch_assoc($resultat))
{
    echo $donnees['id_focaccia'];
    echo "";
    echo $donnees['ingredient']; 
    echo "<br />";
}
/** 7 afficher le nom de la focaccia qui a le plus d'ingrédients */
$resultat = mysqli_query($BDD ,'SELECT ingredient FROM focaccia WHERE ingredient >=25');
while ($donnees=mysqli_fetch_assoc($resultat))
{
    echo $donnees['id_focaccia'];
    echo "";
    echo $donnees['nom_focaccia']; 
    echo "<br />";
}
/** 8 afficher la liste des focaccia qui contiennent de l'aïl */
$resultat = mysqli_query($BDD ,'SELECT id_focaccia FROM focaccia WHERE nom_focaccia');
while ($donnees=mysqli_fetch_assoc($resultat))
{
    echo $donnees['id_focaccia'];
    echo "";
    echo $donnees['nom_focaccia']; 
    echo "<br />";
}
/** 9 afficher la liste des ingredients non utilisé */ 
$resultat = mysqli_query($BDD ,'SELECT ingredient FROM focacci nom_focaccia WHERE');
while ($donnees=mysqli_fetch_assoc($resultat))
{
    echo $donnees['id_focaccia'];
    echo "";
    echo $donnees['ingredient']; 
    echo "<br />";
}
/** 10 afficher la liste des focaccia qui n'ont pas de champignons , ici aussi je n'ai pas  réussit le code exact à trouver */
$resultat = mysqli_query($BDD ,'SELECT select ingredient , nom_focaccia FROM focaccia');
while ($donnees=mysqli_fetch_assoc($resultat))
{
    echo $donnees['id_boisson'];
    echo "";
    echo $donnees['ingredient']; 
    echo "<br />";
}
 ?>
 </body>
</html>