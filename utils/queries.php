<?php
/*
    INCLUDE DATABASE CONNECTION
*/
include('utils/db.php');
include('utils/helper.php');


/* $query= "SELECT * FROM questionsAlt WHERE type = 'animals'";
$stmt= $dbConn->prepare($query);
$stmt->execute();
$questions = $stmt->fetchAll(PDO::FETCH_ASSOC);

$questionsClean = array_column($questions, null, 'id'); */



function splitTable($dbConn){
    $query= "SELECT * FROM questionsAlt WHERE type = 'animals'";
$stmt = $dbConn->prepare($query);
$stmt->execute();

// Check if there are results
if ($stmt->rowCount() > 0) {
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $frage = $row["question"];
        $typ = $row["type"];
        $antworten = [
            'a' => $row["answer_a"],
            'b' => $row["answer_b"],
            'c' => $row["answer_c"],
            'd' => $row["answer_d"]
        ];
        $richtige_antwort = $row["correct_answer"];
        
        // Insert question into the new questions table
        $sql_frage = "INSERT INTO question_new (question, type) VALUES (:question, :type)";
        $stmt_frage = $dbConn->prepare($sql_frage);
        $stmt_frage->bindParam(':question', $frage);
        $stmt_frage->bindParam(':type', $typ);
        $stmt_frage->execute();
        
        // Get the new question ID
        $neue_fragen_id = $dbConn->lastInsertId();
        
        // Insert answers into the new answers table
        $sql_antwort = "INSERT INTO answers_new (answer, is_correct, question_id) VALUES (:antwort, :richtig_falsch, :fragen_id)";
        $stmt_antwort = $dbConn->prepare($sql_antwort);
        
        foreach ($antworten as $key => $antwort) {
            $richtig = ($key == $richtige_antwort) ? 1 : 0;
            $stmt_antwort->bindParam(':antwort', $antwort);
            $stmt_antwort->bindParam(':richtig_falsch', $richtig);
            $stmt_antwort->bindParam(':fragen_id', $neue_fragen_id);
            $stmt_antwort->execute();
        }
    }
} else {
    echo "0 Ergebnisse";
}

}