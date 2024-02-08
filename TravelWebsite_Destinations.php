<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NZ TravelMate | Destinations</title>
    <link href="TravelWebsite_Destination.css" rel="stylesheet" type="text/css">
    <script type= "text/javascript" src="TravelWebsite2.js"></script>>
</head>
<body>
<?php include 'TravelWebsite_logo_menu.php'; ?>

    <!-- navigation bar -->
    <p class="navigationBar"><a href="TravelWebsite_Home.php">Home</a> | Destinations</a></p>

    <!-- destination list -->
    <?php
        $conn = new mysqli("localhost", "root", "", "test");
        $result = $conn->query("SELECT * From destinations");
        echo '<div id="destinationDisplay">';
        foreach ($result as $row) {
    ?>
    <div class="destinationDisplayItem">

    <div class = destinationDisplayDestination>
        <a href="TravelWebsite_DestinationDetails.php?destination=<?= urlencode($row['name']);?>">
           <img id="mainDestination_image" src="TravelWebsiteResource/destinationImage/<?= $row['main_pic_name']; ?>.png"/>
        </a>
        <p id="destinationName_text"><a href="TravelWebsite_DestinationDetails.php?destination=<?= urlencode($row['name']);?>" class=destination-link><?= $row['name'];?></a></p>  
    </div>

    <div class = destinationDisplayIntroduction>
        <p id="destinationBriefIntroduction_text"><?=$row['brief_introduction_destination'];?></p>
        <p id="readMore_text" ><a href="TravelWebsite_DestinationDetails.php?destination=<?= urlencode($row['name']);?>" class=readMore-link>read more</a></p>
    </div>
    
    </div>
    <?php
        }
        echo '</div>';
    ?>
        <!-- footer -->
    <footer>
    <p>© 2023 NZ TravelMate All rights reserved.</p>
    <p>This is the version of our website addressed to speakers of English in New Zealand. If you are a resident of another country or region, please select the appropriate version of Tripadvisor for your country or region in the drop-down menu.</P>
    </footer>
</body>
</html>





