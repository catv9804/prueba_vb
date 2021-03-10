<?php
    foreach($_POST['categoria'] as $cat){
        $querycat= "insert into entrada-categoria(identrada, idcategoria) values (1,1)";
        if ($validacion=mysqli_query($conn2, $querycat)){
            echo "todo correcto con la categoria";
        }else{
            echo "Error en la entrada";
        }
    }