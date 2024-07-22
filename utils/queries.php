<?php
/*
    INCLUDE DATABASE CONNECTION
*/
include('utils/db.php');
include('utils/helper.php');


$query= "SELECT * FROM questionsAlt WHERE type = 'animals'";
$stmt= $dbConn->prepare($query);
$stmt->execute();
$questions = $stmt->fetchAll(PDO::FETCH_ASSOC);

$questionsClean = array_column($questions, null, 'id');

