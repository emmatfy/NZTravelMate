<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="TravelWebsite_Universal.css" rel="stylesheet" type="text/css">
</head>
<body>
<main id="logo_menu">
    <!-- logo: click logo to go back homepage -->
    <a href="TravelWebsite_Home.php"><img id="logo" alt="Logo" src="TravelWebsiteResource/logo.png"/></a>
    <!-- menu bar -->
    <div id="menu">
    <ul id="menuBar">
        <li class="mainMenu"><a href="TravelWebsite_Home.php">Home</a></li>
        <li class="mainMenu"><a href="TravelWebsite_Destinations.php">Destinations</a>
            <ul class="subMenu">
                <li class="subMenuItemD">North Island                       
                    <?php
                        $conn = new mysqli("localhost", "root", "", "test");
                        $result = $conn->query("SELECT * FROM `destinations` WHERE `area` = 'n'");
                        echo '<ul class="secondSubmenu">';
                        foreach ($result as $row) {
                    ?>
                            <!-- adds a destination query parameter to the URL with the value being the name of the destination. The urlencode function is used to ensure that the destination name is properly encoded for inclusion in a URL. -->
                            <li class="listItem"><a href ="TravelWebsite_DestinationDetails.php?destination=<?= urlencode($row['name']); ?>"><?= $row['name'];?></a></li>
                    <?php
                        }
                        echo '</ul>';
                    ?>                       
                </li>
                <li class="subMenuItemD">South Island
                    <?php
                        $conn = new mysqli("localhost", "root", "", "test");
                        $result = $conn->query("SELECT * FROM `destinations` WHERE `area` = 's'");
                        echo '<ul class="secondSubmenu">';
                        foreach ($result as $row) {
                    ?>
                            <li class="listItem"><a href ="TravelWebsite_DestinationDetails.php?destination=<?= urlencode($row['name']); ?>"><?= $row['name'];?></a></li>
                    <?php
                        }
                        echo '</ul>';
                    ?>        
                </li>
            </ul>
        </li>
        <li class="mainMenu"><a href="TravelWebsite_Review.php">Review</a>
            <ul class="subMenu">
                <li class = subMenuItemR><a href="TravelWebsite_WriteReview.php">Write a review</a></li>
            </ul>
        </li>
    </ul>
    </div>
</main> 
</body>
</html>