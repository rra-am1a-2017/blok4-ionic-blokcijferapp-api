<?php
  header('Access-Control-Allow-Origin: *'); 
  include("./connect_db.php");

  $sql = "SELECT * FROM `users`";

  $result = mysqli_query($conn, $sql);

  $records = mysqli_fetch_all($result, MYSQLI_ASSOC);

  echo json_encode($records);
?>