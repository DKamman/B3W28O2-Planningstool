<?php

$servername = "localhost";
$username = "root";
$password = "mysql";
$myDB = "planningtool";

header('Content-type: text/html; charset=iso-8859-1');

try {
  $conn = new PDO("mysql:host=$servername;dbname=$myDB", $username, $password);
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  //echo "Connected successfully";
}
catch(PDOException $e)
{
  //echo "Connection failed: " . $e->getMessage();
}

$sql = 'SELECT * FROM games';
$query = $conn->prepare($sql);
$query->execute();

$result = $query->fetchAll();
// var_dump($result);

$sql2 = 'SELECT * FROM players';
$query2 = $conn->prepare($sql2);
$query2->execute();

$result2 = $query2->fetchAll();


$sql3 = 'SELECT * FROM presentors';
$query3 = $conn->prepare($sql3);
$query3->execute();

$result3 = $query3->fetchAll();

?>


<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Content Creator</title>
  </head>
  <body>

    <?php
    include "inc/navbar.html";
     ?>

     <div class="container">
       <div class="row">
         <div class="col-md">
           <h2 class="text-center">Add a game</h2>
           <form class="" action="index.html" method="get">
            Name <input class="d-block" type="text" name="name" value="" placeholder="Name of the game" style="margin-bottom: 10px;">
            Min. Players<select class="d-block" name="" style="margin-bottom: 10px;">
              <?php
              for ($i=1; $i <= 99; $i++) {
               ?>
              <option value=""><?php echo $i?></option>
              <?php
              }
              ?>
            </select>
            Max. Players<select class="d-block" name="" style="margin-bottom: 10px;">
              <?php
              for ($i=1; $i <= 99; $i++) {
               ?>
              <option value=""><?php echo $i?></option>
              <?php
              }
              ?>
            </select>
            Description <textarea class="d-block" name="description" rows="7" cols="40" placeholder="Short description" style="margin-bottom: 10px;"></textarea>
            <input type="submit">
           </form>
         </div>

         <div class="col-md">
           <h2 class="text-center">Add a player</h2>
           <form class="" action="index.html" method="post">
             Name <input class="d-block" type="text" name="name" value="" placeholder="Name of the player" style="margin-bottom: 10px;">
             Age <select class="d-block" name="" style="margin-bottom: 10px;">
               <?php
               for ($i=18; $i <= 99; $i++) {
                 ?>
                 <option value=""><?php echo $i?></option>
                 <?php
                }
                ?>
              </select>
              <input type="submit">
            </form>
         </div>

         <div class="col-md">
           <h2 class="text-center">Add a presentor</h2>
           <form class="" action="index.html" method="post">
             Name <input class="d-block" type="text" name="name" value="" placeholder="Name of the presentor" style="margin-bottom: 10px;">
             Age <select class="d-block" name="" style="margin-bottom: 10px;">
               <?php
               for ($i=18; $i <= 99; $i++) {
                 ?>
                 <option value=""><?php echo $i?></option>
                 <?php
               }
               ?>
             </select>
            <input type="submit">
           </form>
         </div>
       </div>
     </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
