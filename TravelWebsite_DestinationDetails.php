<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="TravelWebsite_Destination.css" rel="stylesheet" type="text/css">
</head>
<body>
<?php include 'TravelWebsite_logo_menu.php'; ?> 

<?php  
if (isset($_GET['destination'])){
    $selectedDestination = urldecode($_GET['destination']);
    // title
    echo '<title>NZ TravelMate | '. $selectedDestination .'</title>';

    // navigation bar
    echo '<p class="navigationBar"><a href="TravelWebsite_Home.php">Home</a> | <a href="TravelWebsite_Destinations.php">Destinations</a> | '. $selectedDestination .'</p>';
 
echo '<main>';
    $conn = new mysqli("localhost", "root", "", "test");
    $result = $conn->query("SELECT * FROM destinations WHERE destinations.name = '$selectedDestination'");
    $resultView = $conn->query("SELECT * FROM destinations, views WHERE destinations.name = '$selectedDestination' AND destinations.id=views.destination_id");
    $rows = $result->fetch_assoc();
?>
    <img id="introductionDestination_image" src="TravelWebsiteResource/destinationImage/<?=$rows['introduction_pic_name'];?>.png"/>
    <div class="introduction_text">
        <p><?=$rows['introduction_destination'];?></p>
    </div>

    <hr>
    
    <!-- display view list -->
    <p id="listTitle"> List of Views: </p>
    <?php
    echo '<ul id="viewList">';
    foreach($resultView as $row){
    ?> 
        <li id="viewName"><?= $row['view_name'];?></li>
        <p id="viewIntroduction"><?=$row['view_introduction'];?></p>
    <?php
    }
    echo '</ul>';
    ?>
</main>
<?php       
}
?>

    <!-- footer -->
    <footer>
    <p>© 2023 NZ TravelMate All rights reserved.</p>
    <p>This is the version of our website addressed to speakers of English in New Zealand. If you are a resident of another country or region, please select the appropriate version of Tripadvisor for your country or region in the drop-down menu.</P>
    </footer>

</body>
</html>