


<?php include'quizdatabase.php';
?>
<?php session_start();?>

<?php
// Set Question number
$number= (int) $_GET['n'];

 /*
   *get total qsns
   */
    
   $query="SELECT * FROM `questions`";
    
    //get results
    $results=$mysqli->query($query) or die($mysqli->error.__LINE__);
    $total=$results->num_rows;




/*
* get question
*/

$query="SELECT * FROM `questions`
WHERE question_number=$number";

//get result

$result=$mysqli->query($query) or die($mysqli->error.__LINE__);

$question= $result->fetch_assoc();


/*
* get choices
*/

$query="SELECT * FROM `choices`
WHERE question_number=$number";

//get result

$choices=$mysqli->query($query) or die($mysqli->error.__LINE__);

?>


<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8"/>
        <title>SlamBook Quizzer</title>
        <link rel="stylesheet" href="quizerstyle.css" type="text/css"/> 
             
    </head>
    <body>
      


</div>
    <header>
        <div class="container">
            <h1> Quizzer</h1>
        </div>
    </header>
        <main>
            <div class="container">
                <div class="current">Question <?php echo $question['question_number'];?> of <?php echo $total;?></div>
                <p class="question">
              <?php echo $question['text'];?>
                </p>
               <form method="post" action="quizprocess.php">
                    <ul class="choices">
                        <?php while($row= $choices->fetch_assoc()):?>
                            <li><input name="choice" type="radio" value="<?php echo $row['id'];?>"/><?php echo $row['text'];?></li>
                       <?php endwhile;?>
                    
                    </ul>
                    <input type="submit" Value="Submit"/>
                    <input typr="hidden" name="number" value="<?php echo $number;?>"/>
                </form>
            </div>
        </main>
    
    
    </body>


</html>