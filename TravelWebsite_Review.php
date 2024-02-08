<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NZ TravelMate | Review</title>
    <link href="TravelWebsite_Review.css" rel="stylesheet" type="text/css">
    <script type="module" src="TravelWebsite.js"></script>
</head>
<body>
<?php include 'TravelWebsite_logo_menu.php'; ?>    

<!-- navigation bar -->
<p class="navigationBar"><a href="TravelWebsite_Home.php">Home</a> | Review</a></p>

<main>
<div class="function">
<!-- sort the review -->
<p class="sortOption">
<input type ="radio"  name="order" value = "latest" checked style="display:none">
<input type ="radio"  name="order" value = "oldest" style="display:none">
</p>


<!-- filter the review -->
<p class="filterOption">
<select class="filterSelector" id="year" name = "yearForFilter" style="display:none">
<option value="" disabled selected>Year</option>
</select>
<select class="filterSelector" id = "location" name="locationForFilter" style="display:none">
<option value="" disabled selected>Destination</option>
<?php
    $conn = new mysqli("localhost", "root", "", "test");
    $result = $conn->query("SELECT * FROM `destinations`");
    foreach ($result as $row) {
?>
    <option><?= $row['name'];?></option>
 <?php
    }
?>  
</select>
</p>

<!-- Write a review button -->
<div >
<button class="writeReviewButton"><a href="TravelWebsite_WriteReview.php">Write a review</a></button>
</div>
</div>

<!-- review list -->
<div class="reviewList">
<?php
    $conn = new mysqli("localhost", "root", "", "test");
    // the latest review shows first
    $result = $conn->query("SELECT * FROM reviews ORDER BY id DESC");

    foreach ($result as $row) {
        echo '<div class= "reviewItem">';
?>
        <div class="reviewSubject">
        <p id="title"><?=$row['review_title'];?></p>
        <p id="location">Where: <a href="TravelWebsite_DestinationDetails.php?destination=<?= urlencode($row['location']);?>"><?=$row['location'];?></a></p>
        <p id ="date">When: <?=$row['month'];?> <?=$row['year'];?></p>
        </div>

        <div>
        <p id ="reviewDetails"><?=$row['review_content'];?></p>
        </div>
        
        <?php
        if(!empty($row['review_image_url'])){
        ?>
            <img id= "reviewPicture" src="TravelWebsiteResource/reviewPictures/<?= $row['review_image_url'];?>"/>        
    <?php 
        } 
        echo '<hr>'; 
        echo '</div>';
    }
    ?>
    </div>
</main>

        <!-- footer -->
    <footer>
    <p>© 2023 NZ TravelMate All rights reserved.</p>
    <p>This is the version of our website addressed to speakers of English in New Zealand. If you are a resident of another country or region, please select the appropriate version of Tripadvisor for your country or region in the drop-down menu.</P>
    </footer>


</body>
</html>