

<?php include'quizdatabase.php';
?>
<?php
 /*
   *get total qsns
   */
    
   $query="SELECT * FROM questions";
    
    //get results
    $results=$mysqli->query($query) or die($mysqli->error.__LINE__);
    $total=$results->num_rows;

?>


<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8"/>
        <title>SlamBook Quizzer</title>
        <link rel="stylesheet" href="quizerstyle.css" type="text/css"/> 
    </head>
    <body>
    <header>
        <div class="container">
            <h1> SlamBook Quizzer</h1>
        </div>
    </header>
        <main>
            <div class="container">
                <h2>Test Your Knowledge</h2>
                <p> This is a multiple choice quiz to test your knowledge.</p>
                <ul>
                    <li><strong>Number of Questions:</strong><?php echo $total; ?></li>
                    <li><strong>Type:</strong>Multiple Choice</li>
                    <li><strong>Estimated Time:</strong><?php echo $total * .5 ;?> Minutes</li>
                
                </ul>
                <a href="quizquestion.php?n=1" class="start">Start Quiz</a>
            </div>
        </main>
    
    
    </body>


</html>