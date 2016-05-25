<?php
  $user = 'root';
  $password = '';
  $pdo = new PDO('mysql:host=localhost;dbname=teamdb;charset=utf8;', $user, $password);
  $statement=$pdo->prepare("SELECT * FROM members");
  $statement->execute();
  $results=$statement->fetchAll(PDO::FETCH_ASSOC);
  $json=json_encode($results);
  echo $json;
?>
    