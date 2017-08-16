
</html>
 

<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8"/>
        <title> Quizzer</title>
        <link rel="stylesheet" href="quizerstyle.css" type="text/css"/> 
        <style>
body {margin:0;}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
    background-color: #4CAF50;
    color: white;
}
input[type=text] {
    width: 200px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width:50%;
}

</style>
    </head>
    <body>
  
    <header>
        <div class="container">
            <h1> Quizzer</h1>
        </div>
    </header>
        <main>
            <div class="container">
                <h2>Test Your Knowledge</h2>
                <p> This is a multiple choice quiz to test your knowledge.</p>
                <ul>
                    <li><strong>Number of Questions:</strong>11</li>
                    <li><strong>Type:</strong>Multiple Choice</li>
                    <li><strong>Estimated Time:</strong>4 minutes</li>
                
                </ul>
                <a href="quizquestion.php?n=1" class="start">Start Quiz</a>
            </div>
        </main>
    
    
    </body>


</html>