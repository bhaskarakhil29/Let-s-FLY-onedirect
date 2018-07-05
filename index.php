<?php
session_start();  /* starting the session to pass the variables to other pages*/
if(isset($_POST["submit"])){         /*If post array is not empty then continue*/
    $_SESSION['from']=$_POST["from"];
    /*assinging the post variable values to session variables*/
    $_SESSION['to']=$_POST["to"];
    $_SESSION['date']=$_POST["dateofjourney"];
    $_SESSION['num']=$_POST["nopassengers"];
    header("location:search.php");
    /*passing the values to the location search.php*/
}
?>

<!--DOCHTML-->
<html>
    <head>
        <title>Flight Search Engine</title>
        
        <!--linking css files here-->
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    
    <body id="body-id">
       <!--Heading of the page-->
       <div id="head">
        <div id="title">
           <p><span id="lets">Let's</span>&nbsp;&nbsp;&nbsp;<span id="FLY">FLY!</span></p>
        </div>
        <!--Flight Gif-->
        <div>
            <img id="title-img" src="images/titleflight.gif">
        </div>
        </div>
        <!--Offer Image-->
        <div id="offer-img">
            <img src="images/offers-icon-19.png">
        </div>
        <!--AirIndia Image division-->
        <div id="airdiv">
            <img id="airimg" src="images/air.png">
        </div>
        <!--Spicejet Image division-->
        <div id="spicejetdiv">
            <img id="spiceimg" src="images/spice.png">
        </div>  
        <!--Taj Image division-->
        <div id="tajdiv">
            <img id="tajimg" src="images/1200px-TajAir_Logo.svg.png">
        </div>        
        <!--Indigo Image division-->
        <div id="indigodiv">
            <img id="indigoimg" src="images/IndiGo_Logo.jpg">
        </div>
        <!--Form Block-->
        <div id="container">
            
            <form action="" method="post">
                
                    <!--creating the inputs and buttons-->
                    <legend id="container-heading">Search Flights According To Your Preference</legend>
                    <br><br><br>
                    <label for="form-from" font-size=>From</label>
                    <input type="text" id="form-from" placeholder="Enter Source" name="from">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label for="form-to">To</label>
                    <input type="text" id="form-to" placeholder="Enter destination" name="to">
                    <br><br>
                    <label for="form-date">Date Of Journey</label>
                    <input type="date" id="form-date" name="dateofjourney">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label for="form-number">No.of Passengers</label>
                    <input type="number" id="form-number" name="nopassengers">
                    <br><br><br><br>
                    <input type="submit" name="submit" value="Search" id="form-button" >
                    
            </form>
        </div>
        
        
    </body>
</html>
