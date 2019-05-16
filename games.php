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

$sql = 'SELECT * FROM games ORDER BY name ASC';
$query = $conn->prepare($sql);
$query->execute();

$result = $query->fetchAll();
// var_dump($result);

$count = 'SELECT COUNT(id) FROM games';
$querycount = $conn->prepare($count);
$querycount->execute();

?>


<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Games</title>
  </head>
  <body>

    <?php
    include "inc/navbar.html";
     ?>

  <!-- <div class="container-fluid center">
    <div class="row">
    <?php
    //foreach ($result as $row) {
    ?>
    <div class="card" style="width: 18rem;">
      <img src="img/<?php// echo $row['image']?>" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title"><?php// echo $row['name']?></h5>
        <p class="card-text"><?php// echo $row['description']?></p>
        <a href="#" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>
    <?php
    //}
    ?>
  </div>
</div> -->

<div class="jumbotron jumbotron-fluid" style="height:225px; padding-top:24px;">
  <div class="container">
    <h1 class="display-4 text-center">Games</h1>
    <p class="lead text-center">Door op de naam van het spel te klikken kunt u beginnnen
      met het toe voegen van de game tot de planning.
    </p>
  </div>
</div>

  <div class="container-fluid">

    <p><a href="addgame.php"><button type="button" class="btn btn-secondary btn-lg">Game Toevoegen +</button></a></p>

    <table border="1">
      <tr class="text-center">
        <th>Name</th>
        <th>Image</th>
        <th>Description</th>
        <th>Expansions</th>
        <th>Skills</th>
        <th>Min. Players</th>
        <th>Max. Players</th>
        <th>Play Duration</th>
        <th>Explain Duration</th>
      </tr>
      <?php
      foreach ($result as $row) {
      ?>
      <tr>
        <td><a href="addevent.php?gameid=<?= $row['id']?>"><?php echo $row['name']?></td>
        <td><img src="img/<?php echo $row['image']?>" style="width:10em; height:10em;"></td>
        <td><?php echo $row['description']?></td>
        <td><?php echo $row['expansions']?></td>
        <td><?php echo $row['skills']?></td>
        <td><?php echo $row['min_players']?></td>
        <td><?php echo $row['max_players']?></td>
        <td><?php echo $row['play_minutes']?> min</td>
        <td><?php echo $row['explain_minutes']?> min</td>
      </tr>
      <?php
      }
      ?>
    </table>
  </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
