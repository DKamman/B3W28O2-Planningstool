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

    <title>Planningtool</title>
  </head>
  <body>

    <?php
    include "inc/navbar.html";
     ?>

  <div class="jumbotron jumbotron-fluid" style="height:225px; padding-top:24px;">
    <div class="container">
      <h1 class="display-4 text-center">Planningtool</h1>
      <p class="lead">Hier kunt u de planning maken.
        Wilt u uitgebreidere informatie over de te kiezen games, spelers en presentators?
        Klikt u dan op de bovenstaande knop genaamd "Content".
        De link "Content Creator", onder: "Content", brengt u naar een pagina waar u zelf
        Games, Spelers en Presentators kunt toevoegen.</p>
    </div>
  </div>

  <div class="container">
    <table border="1" class="text-center">
      <tr>
        <th>Games</th>
        <th>Start Time</th>
        <th>Duration</th>
        <th>Presentor</th>
      </tr>
      <?php
      foreach ($result as $row) {
      ?>
      <tr>
        <td>
          <select name="games">
            <?php
            foreach ($result as $row) {
            ?>
            <option value="<?php echo $row['name']?>" ><?php echo $row['name']?></option>
            <?php
           }
           ?>
          </select>
        </td>
        <td>

        </td>
        <td>

        </td>
        <td>
          <select name="presentors">
            <?php
            foreach ($result3 as $row) {
            ?>
            <option value="<?php echo $row['name']?>" ><?php echo $row['name']?></option>
            <?php
           }
           ?>
          </select>
        </td>
        <td>

        </td>
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
