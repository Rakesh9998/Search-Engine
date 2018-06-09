<?php
 // USING CONSTANTS 
    define("DB_SERVER", "localhost");
    define("DB_USER", "root");
    define("DB_PASS", "");
    define("DB_NAME", "search");
   /* $dbhost = "localhost";
    $dbuser = "widget_cms";
    $dbpass = "secretpassword";
    $dbname = "widget_corp";
    */
    // 1. create a database connection
    global $connection;
    $connection = 'mysql:host=localhost; dbname=search';
    try{
    $db = new PDO($connection,DB_USER,DB_PASS);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO:: ERRMODE_EXCEPTION);
    // test if connection occured.
    }
    catch(PDOException $ex){
        echo "connection failed" . $ex->getMessage();
    }
?>