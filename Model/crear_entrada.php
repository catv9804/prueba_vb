<?php
include ('../db/db.php');
$titulo=$_POST['nombre'];
$contenido=$_POST['contenido'];
$autores = $_POST['autor'];
$categorias=$_POST['categoria'];
//echo $autores;
 $sql = "insert into entrada(nombre,contenido) values ('".$titulo."','".$contenido."')";
 if (mysqli_query($conn2, $sql)) {
    $last_id = mysqli_insert_id($conn2);
    echo  $last_id;
    //mysqli_close($conn2); 
    if (is_array($autores) || is_object($autores))
    echo "entr al if";
        {
            for($i =0; $i < count($autores); $i++){
                echo "Autor número ".$i;
                $actual=$autores[$i];
                 $sql2 = "INSERT INTO ea (identrada, idautor) 
                 VALUES ($last_id, $actual)";
                if (mysqli_query($conn2, $sql2)) {
                     echo "ok";
                }else
                echo "Error: " . $sql2. "<br>" . mysqli_error($conn2);

        }
        for($j =0; $j < count($categorias); $j++){
            //echo "Autor número ".$i;
            $actualC=$categorias[$j];
             $sql3 = "INSERT INTO ec (identrada, idcategoria) 
             VALUES ($last_id, $actualC)";
            if (mysqli_query($conn2, $sql3)) {
                 echo "ok";
            }else
            echo "Error: " . $sql3. "<br>" . mysqli_error($conn2);

    }
    }
    
   
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn2);
  }
 

?>