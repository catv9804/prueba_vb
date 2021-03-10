<?php
$id = $_GET['id'];

$query3 = "SELECT * from categorias where id= $id";
$result = mysqli_query($conn2, $query3);
if(!$result) {
  die('Query Failed'. mysqli_error($conn2));
}

$json = array();
while($row = mysqli_fetch_row($result)) {
//$json='nombre'=>$row['nombre'], 'contenido'=>$row['contenido'];
  $json[] = array(
    'nombre' => $row['nombre'],
    'contenido' => $row['contenido']
  );
}
$jsonstring = json_encode($json,JSON_UNESCAPED_UNICODE);
echo $jsonstring;
//mysqli_close($conn2);
/*$nombre= $_POST['nombre'];
$contenido= $_POST['contenido'];
$autores= $_POST['autor'];
$categorias= $_POST['categoria'];


$querymod= "update entrada set nombre='$nombre', contenido='$contenido' where id = $id ";
*/
?>