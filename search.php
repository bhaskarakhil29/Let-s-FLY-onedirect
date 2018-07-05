<html>
     <head>
         <title>Searching</title>
         <link rel="stylesheet" type="text/css" href="css/style.css">
         <!--linking the css files-->
         
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
      <?php
         session_start(); /*starting the session to get the values entered by the user*/
         $from="";
         $to="";
         if(isset($_SESSION)){
             /*assigning the values entered by the user*/
             $from=$_SESSION['from'];
             $to=$_SESSION['to'];
             $date=$_SESSION['date'];
             $num=$_SESSION['num'];
         }
         /*connecting the database using servername,username,password,databasename*/
         $link=mysqli_connect("localhost","root","","flightsearch");
         if(mysqli_connect_error()){
             /*if database not connected then we are going to make the connection die*/
             die("Sorry, There is an error while connecting to the database!");
         }
         else{
             /*storing the query in variable query*/
             $query="SELECT * FROM flights WHERE soufrom='$from' AND desto='$to' AND departdate='$date'";
             /*retrieving all the data in the table flights with WHERE clause*/     
             $result=mysqli_query($link,$query);
             /*if number of rows retrieved are not zero then continue..*/
             if(mysqli_num_rows($result)>0){
                 /*storing all the data in table*/
             echo "<table id='tableflight'>";
                echo "<tr id='headrow'>";
                    echo "<th>Image of the Flight</th>";
                    echo "<th>Name of the Flight</th>";
                    echo "<th>From</th>";
                    echo "<th>To</th>";
                    echo "<th>Date of Journey(yyyy/mm/dd)</th>";
                    echo "<th>Departure time(hrs.min.sec.milli)</th>";
                    echo "<th>Arriaval Time</th>";
                    echo "<th>Total Duration</th>";
                    echo "<th>Price</th>";
                    echo "<th>Booking</th>";
                echo "</tr>";
             while($row=mysqli_fetch_array($result)){
                 echo "<tr id='flightrow'>"; 
                 echo "<td><img id='flyimg' src='images/".$row['imageflight']."'></td>";
                 echo "<td>".$row['nameflight']."</td>";
                 echo "<td>".$row['soufrom']."</td>";
                 echo "<td>".$row['desto']."</td>";
                 echo "<td>".$row['departdate']."</td>";
                 echo "<td>".$row['departtime']."</td>";
                 echo "<td>".$row['arrivetime']."</td>";
                 echo "<td>".$row['totaltime']."</td>";
                 echo "<td>Rs ".$row['price']."/-</td>";
                 echo "<td><div id='bookbutton'><a href='book.php'><span id='booktext'>Book</span></a></div></td>";
                 echo "</tr>";
                 
             }
             echo "</table>";
             }
             /*If number of rows=0 then continue with below*/
             else {
                 echo "<p id='sorry'>No Flights Available between '$from' and '$to' on '$date'</p>";
                 echo "<img src='images/sad.png' id='sorryimg'>";
             }
         }
         ?>
    </body>
</html>