<?php
// Start the session
session_start();
// Access the value from the session
if (isset($_SESSION['newImageName'])) {
    $newImageName = $_SESSION['newImageName'];
}

if(isset ($_POST['submitButton'])){
    echo "<pre>", print_r($_POST), "</pre>";
    echo "<pre>", print_r($_FILES['reviewImage']['size']), "</pre>";

    $sname = "localhost";
    $uname = "root";
    $password = "";
    $db_name = "test";
    $conn = mysqli_connect($sname,$uname,$password,$db_name);

    function validate($data){
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    $location = validate($_POST['location']);
    $selectorYear = validate($_POST['selectorYear']);
    $selectorMonth = validate($_POST['selectorMonth']);
    $reviewContent = validate($_POST['reviewContent']);
    $reviewTitle = validate($_POST['reviewTitle']);

    if (!empty($newImageName)){
        $sql = "INSERT INTO `reviews`(`location`, `review_title`, `review_content`, `year`, `month`,`review_image_url`) VALUES ('$location','$reviewTitle','$reviewContent','$selectorYear','$selectorMonth','$newImageName')";
    }else{
        $sql = "INSERT INTO `reviews`(`location`, `review_title`, `review_content`, `year`, `month`) VALUES ('$location','$reviewTitle','$reviewContent','$selectorYear','$selectorMonth')";
    }
    
    mysqli_query($conn,$sql);
    header("Location: TravelWebsite_Review.php");
    session_destroy();  
 

}


