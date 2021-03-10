<?php
    $servername='localhost';
    $username='root';
    $password='';
    $dbname='vb';
    

    $conn2 = new mysqli($servername, $username, $password,$dbname);
    mysqli_set_charset($conn2, "utf8");
    if ($conn2->connect_error) {
      die("Connection failed: " . $conn2->connect_error);
    }
    
    ?>