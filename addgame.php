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
  echo "Connection failed: " . $e->getMessage();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {

  $stmt = $conn->prepare('INSERT INTO games (name, image, description, min_players, max_players, play_minutes, explain_minutes)
                          VALUES (:name, :image, :description, :min_players, :max_players, :play_minutes, :explain_minutes)');

  $stmt->bindParam(':name', $name);
  $stmt->bindParam(':image', $image);
  $stmt->bindParam(':description', $description);
  $stmt->bindParam(':min_players', $min_players);
  $stmt->bindParam(':max_players', $max_players);
  $stmt->bindParam(':play_minutes', $play_minutes);
  $stmt->bindParam(':explain_minutes', $explain_minutes);

  $name =             $_POST['name'];
  $image =            $_POST['image'];
  $description =      $_POST['description'];
  $min_players =      $_POST['min_players'];
  $max_players =      $_POST['max_players'];
  $play_minutes =     $_POST['play_minutes'];
  $explain_minutes =  $_POST['explain_minutes'];

  $stmt->execute();

  $conn = null;

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

    <div class="container">
      <h1>Spel Toegevoegd</h1>
    </div>

      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
  </html>

<?php header('Refresh:1; url=games.php'); }else{

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

  <div class="container">
    <h1>Voeg een spel toe</h1>
    <form class="" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']) ?>" method="post">
    <div class="form-group">

      <label for="gameimage">Afbeelding</label>
      <input class="form-control" type="file" name="image" required>

      <label for="gamename">Naam</label>
      <input class="form-control" type="text" name="name" required>

      <label for="gamedescription">Beschrijving</label>
      <input class="form-control" type="text" name="description" required>

      <label for="age">Minimale spelers</label>
      <select class="form-control" name="min_players" required>
        <?php for ($i=1; $i <= 10 ; $i++) { ?>
          <option value="<?php echo $i?>"><?php echo $i?></option>
        <?php } ?>
      </select>

      <label for="age">Maximale spelers</label>
      <select class="form-control" name="max_players" required>
        <?php for ($i=2; $i <= 99 ; $i++) { ?>
          <option value="<?php echo $i?>"><?php echo $i?></option>
        <?php } ?>
      </select>

      <label for="age">Speel duratie (in minuten)</label>
      <select class="form-control" name="play_minutes" required>
        <?php for ($i=1; $i <= 60 ; $i++) { ?>
          <option value="<?php echo $i?>"><?php echo $i?></option>
        <?php } ?>
      </select>

      <label for="age">Presentatie duratie (in minuten)</label>
      <select class="form-control" name="explain_minutes" required>
        <?php for ($i=1; $i <= 60 ; $i++) { ?>
          <option value="<?php echo $i?>"><?php echo $i?></option>
        <?php } ?>
      </select>

      <div style="margin-top:1em;">
        <a href="games.php"><button type="button" class="btn btn-danger">Annuleren</button></a>
        <button type="submit" class="btn btn-primary">Opslaan</button>
      </div>

    </div>
    </form>
  </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>

<?php } ?>
