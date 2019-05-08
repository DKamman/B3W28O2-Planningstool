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

function insertgame(){
  echo 'hello world';
}

function insertplayer(){

}

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

<!--insert game begins -->
     <div class="container">
       <div class="row">
         <div class="col-md">
           <h2 class="text-center">Add a game</h2>
           <form class="" action="cc.php" method="post">
            Name <input class="d-block" type="text" name="name" placeholder="Name of the game" style="margin-bottom: 10px;">
            Play duration (in minutes) <select class="d-block" name="play_minutes" style="margin-bottom: 10px;">
              <?php
              for ($i=5; $i <= 60; $i++) {
               ?>
              <option value=""><?php echo $i?></option>
              <?php
              }
              ?>
              </select>
            Explain duration (in minutes) <select class="d-block" name="explain_minutes" style="margin-bottom: 10px;">
              <?php
              for ($i=5; $i <= 60; $i++) {
               ?>
              <option value=""><?php echo $i?></option>
              <?php
              }
              ?>
              </select>
            Min. players<select class="d-block" name="min_players" style="margin-bottom: 10px;">
              <?php
              for ($i=1; $i <= 99; $i++) {
               ?>
              <option value=""><?php echo $i?></option>
              <?php
              }
              ?>
            </select>
            Max. Players<select class="d-block" name="max_players" style="margin-bottom: 10px;">
              <?php
              for ($i=1; $i <= 99; $i++) {
               ?>
              <option value=""><?php echo $i?></option>
              <?php
              }
              ?>
            </select>
            Description <textarea class="d-block" name="description" rows="7" cols="40" placeholder="Description of the game" style="margin-bottom: 10px;"></textarea>
            <input onclick="insertgame();" type="submit" value="Submit Game">
           </form>
         </div>
<!-- insert game ends -->

<!-- insert player begins -->
         <div class="col-md">
           <h2 class="text-center">Add a player</h2>
           <form class="" action="cc.php" method="post">
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
              <input onclick="insertplayer();" type="submit" value="Submit player">
            </form>
         </div>
<!-- insert player ends -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
