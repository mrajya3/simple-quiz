


<?php session_start();?>


<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8"/>
        <title>Quizzer</title>
        <link rel="stylesheet" href="quizerstyle.css" type="text/css"/> 
            
    </head>
    <body>
        <div class="topnav">

 
</div>
    <header>
        <div class="container">
            <h1>Quizzer</h1>
        </div>
    </header>
        <main>
            <div class="container">
               <h2> You're done!</h2>
                <p> Congratulations!!! You have completed the test.</p>
                <p>Final Score:<?php echo $_SESSION['score'];?></p>
                <a href="quizadmin.php?n=1" class="start">Insert question</a>
                
            </div>
        </main>
    
    
    </body>


</html>