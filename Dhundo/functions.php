<?php


function redirect_to($new_location){
    header("Location: " . $new_location);
    exit;
}
/*
function mysql_prep($string){
    global $db;

    $escaped_string = mysql_real_escape_string($db, $string);
    return $escaped_string;
}
*/





?>