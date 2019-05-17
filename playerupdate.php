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

$sql = 'SELECT * FROM players WHERE id = :id';
$query = $conn->prepare($sql);
$query->bindParam(':id', $_GET['id']);
$query->execute();
$result = $query->fetch();

if ($_SERVER["REQUEST_METHOD"] == "POST") {

  $stmt = $conn->prepare('UPDATE players SET first_name=:first_name, last_name=:last_name, age=:age, isTutor=:isTutor WHERE id = :id');

  $stmt->bindParam(':id', $id);
  $stmt->bindParam(':first_name', $first_name);
  $stmt->bindParam(':last_name', $last_name);
  $stmt->bindParam(':age', $age);
  $stmt->bindParam(':isTutor', $isTutor);

  $id =           $_POST['id'];
  $first_name =   $_POST['first_name'];
  $last_name =    $_POST['last_name'];
  $age =          $_POST['age'];
  $isTutor =      $_POST['isTutor'];

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
      <h1>Speler Geupdate</h1>
    </div>

      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
  </html>

<?php header('Refresh:1; url=players.php'); }else{

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
    <h1>Speler "<?php echo $result['first_name'];?> <?php echo $result['last_name']?>" bewerken</h1>
    <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']) ?>" method="post">
    <div class="form-group">

      <input type="hidden" name="id" value="<?php echo $result['id'];?>">

      <label for="firstname">Voornaam</label>
      <input class="form-control" type="text" name="first_name" value="<?php echo $result['first_name']; ?>" required>

      <label for="lastname">Achternaam</label>
      <input class="form-control" type="text" name="last_name" value="<?php echo $result['last_name']; ?>" required>

      <label for="age">Leeftijd</label>
      <select class="form-control" name="age" required>
        <?php for ($i=10; $i <= 99 ; $i++) { ?>
          <option value="<?php echo $i?>"><?php echo $i?></option>
        <?php } ?>
      </select>

      <label for="presentor">Presentator</label>
      <select class="form-control" name="isTutor" required>
        <option value="0">Nee</option>
        <option value="1">Ja</option>
      </select>

      <div style="margin-top:1em;">
        <a href="players.php"><button type="button" class="btn btn-danger">Annuleren</button></a>
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
