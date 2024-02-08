<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NZ TravelMate | Home</title>
    <link href="TravelWebsite_Home.css" rel="stylesheet" type="text/css">
    <script type= "text/javascript" src="TravelWebsite2.js"></script>>
</head>
<body>
<?php include 'TravelWebsite_logo_menu.php'; ?>
    <!-- destination -->
    <p class="titleHome_text">Destinations</p>
    <p Class="seeMore_text"><a href="TravelWebsite_Destinations.php" class="seeMore-link">See More</a></p>
    <?php
        $conn = new mysqli("localhost", "root", "", "test");
        $result = $conn->query("SELECT * FROM `destinations` WHERE `id` < 4");
        echo '<div class="homeDisplay">';
        foreach ($result as $row) {
    ?> 
    <div class="homeDisplayItem">
        <a href="TravelWebsite_DestinationDetails.php?destination=<?= urlencode($row['name']); ?>">
            <img id="mainDestination_image" src="/TravelWebsiteResource/destinationImage/<?= $row['main_pic_name']; ?>.png" />
            <p id="destinationName_text"><a href="TravelWebsite_DestinationDetails.php?destination=<?= urlencode($row['name']); ?>" class="destination-link"><?= $row['name']; ?></a></p>
        </a>
    </div>
    <?php
    }
        echo '</div>';
    ?>

    <!-- Review -->
    <p class="titleHome_text">Review</p>
    <p Class="seeMore_text"><a href="TravelWebsite_Review.php" class="seeMore-link">See More</a></p>
    <?php
        $conn = new mysqli("localhost", "root", "", "test");
        $result = $conn->query("SELECT * FROM `reviews` WHERE `id` < 5");
        echo '<div class="reviewDisplay">';
        foreach ($result as $row) {
    ?> 
    <div class="reviewDisplayItem">
        <a href="TravelWebsite_Review.php">
            <p id="reviewTitle"><?=$row['review_title'];?></p>
            <p id="location_date"><?=$row['location'];?> | <?=$row['month'];?> <?=$row['year'];?></p>
            <p id="briefReviewContent"><?=$row['review_content'];?></p>

        </a>
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