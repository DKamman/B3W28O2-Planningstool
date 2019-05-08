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

$sql = 'SELECT * FROM games WHERE id =:id';
$query = $conn->prepare($sql);
$query->bindParam(':id', $_GET['gameid']);

$query->execute();

$result = $query->fetch();
 // var_dump($result);


$sql2 = 'SELECT * FROM players';
$query2 = $conn->prepare($sql2);
$query2->execute();

$result2 = $query2->fetchAll();


?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">

    <title>chosen game</title>
  </head>
  <body>
    <div class="container">

      <div class="row">
        <div class="col-">
          <img src="img/<?php echo $result['image'];?>" alt="" style="width:100px; height:100px; float:left; margin:1em 1em 0 0;" >
        </div>
        <div class="col-6">
          <h2>Beschrijving</h2>
          <p><?php echo $result['description'];?></p>
        </div>
      </div>

      <div class="row">
        <div class="col-" style="width:100px; margin:1em 1em 0 0;">

        </div>
        <div class="col-3">
          <h3>Duration</h3>
          <p><?php echo $result['play_minutes'];?> min.</p>
        </div>
        <div class="col-3">
          <h3>Explain time</h3>
          <p><?php echo $result['explain_minutes'];?> min.</p>
        </div>
      </div>

      <div class="row">
        <div class="col-" style="width:100px; margin:1em 1em 0 0;">

        </div>
        <div class="col-3">
          <h3>Min players</h3>
          <p><?php echo $result['min_players'];?></p>
        </div>
        <div class="col-3">
          <h3>Max players</h3>
          <p><?php echo $result['max_players'];?></p>
        </div>
      </div>
      <div class="row" style="margin-left:0.1em;">
        <div class="col-" class="col-" style="width:100px; margin:1em 1em 0 0;">

        </div>
        <!-- <div class="col-3"> -->
          <form action="index.html" method="post">
            <div style="margin-top:1em;">Kies de spelers <input style="float:right;" type="text" name="chosenplayer" value=""></div>
            <div style="margin-top:1em;">Vul in een start tijd <input style="float:right;" type="time" name="chosentime" value=""></div>
            <div style="margin-top:1em;">Kies een presentator <select style="float:right;" class="" name="chosenpresenter">
                 <?php
                 foreach ($result2 as $row) {
                 ?>
                 <option value=""><?php echo $row['name']?></option>
                 <?php
                 }
                 ?>
                 </select>
            </div>
            <button onclick="location.href='games.php'" type="button" name="button">Cancel</button>
            <input type="submit" name="" value="Save">
          </form>
        <!-- </div> -->
      </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
