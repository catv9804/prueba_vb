<?php
include('../db/db.php');

$query = "SELECT * from entradas";
$result = mysqli_query($conn2, $query);
if(!$result) {
  die('Query Failed'. mysqli_error($conn2));
}

$json = array();
while($row = mysqli_fetch_array($result)) {
  $json[] = array(
    'nombre' => $row['nombre'],
    'id' => $row['id'],
    'contenido' => $row['contenido'],

  );
}
$jsonstring = json_encode($json,JSON_UNESCAPED_UNICODE);
echo $jsonstring;
mysqli_close($conn2);
?>