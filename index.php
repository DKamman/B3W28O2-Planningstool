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


$sql2 = 'SELECT * FROM planning ORDER BY start_time ASC';
$query2 = $conn->prepare($sql2);
$query2->execute();

$result2 = $query2->fetchAll();


// PROBEERSEL OM DE GOED NAAM TE WEERGEVEN OP DE PLANNING PAGINA
$sql3 = 'SELECT * FROM games WHERE id = :game_id';
$query3 = $conn->prepare($sql3);
$query3->bindParam(':game_id', $result2['game_id']);
$query3->execute();

$result3 = $query3->fetch();

var_dump($result3);



?>


<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Planningtool</title>
  </head>
  <body>

    <?php
    include "inc/navbar.html";
     ?>

  <div class="jumbotron jumbotron-fluid" style="height:225px; padding-top:24px;">
    <div class="container">
      <h1 class="display-4 text-center">Planningtool</h1>
      <p class="lead">Hier komt uw planning te staan.
        Wilt u uitgebreidere informatie over de te kiezen games, spelers en presentators?
        Klikt u dan op de bovenstaande knop genaamd "Content".
      </p>
    </div>
  </div>

  <div class="container">
    <table width="1100" border="1" class="text-center">
      <tr>
        <th>Game</th>
        <th>Start Tijd</th>
        <th>Duratie</th>
        <th>Spelers</th>
        <th>Presentator</th>
      </tr>
      <?php
      foreach ($result2 as $row) {
      ?>
      <tr>
        <td><?php echo $row['game_id'];?></td>
        <td><?php echo $row['start_time'];?></td>
        <td><?php echo $row['duration'];?> min</td>
        <td><?php echo $row['player'];?>,</td>
        <td><?php echo $row['presentor'];?></td>
        <td> <a href="planningupdate.php?id=<?php echo $row['id'];?>">Bewerken</a></td>
        <td> <a href="planningdelete.php?id=<?php echo $row['id'];?>">Verwijderen</a></td>
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
