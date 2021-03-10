<?php
    //include('../Model/entrada.php');
    include('../db/db.php');
    if( isset($_POST['submit'])){
        $titulo= $_POST['titulo'];
        $contenido=$_POST['contenido'];
        $query2 ="insert into entrada(nombre, contenido) values ('".$titulo."','".$contenido."')";
        if (mysqli_query($conn2, $query2)) {
            echo json_encode(array("statusCode"=>200));
        } 
        else {
            echo json_encode(array("statusCode"=>201));
        }
        mysqli_close($conn2);
        //if ($validacion=mysqli_query($conn2, $query2)){
            //echo "todo correcto con la entrada";
        //}else{
            //echo "Error en la entrada";
        //}
    
    }
    
?>