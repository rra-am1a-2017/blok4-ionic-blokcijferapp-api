<?php
  header('Access-Control-Allow-Origin: *'); 

  include("./sanitize.php");
  
  include("./connect_db.php");

  $residence = sanitize($_POST["residence"]);
  $id = sanitize($_POST["id"]);

  $sql = "UPDATE `users` set `residence` = '" . $residence . "' WHERE `id` = " . $id ;

  $result = mysqli_query($conn, $sql);

  if ($result) {
    $message = [["message" => "Succes"]];
    echo json_encode($message);
  } else {
    $message = [["message" => "Error"]] ;  
    echo json_encode($message);     
  }
?>