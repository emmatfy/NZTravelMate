<?php

if(isset ($_FILES['reviewImage']['name'])){
  session_start();
}

$sname = "localhost";
$uname = "root";
$password = "";
$db_name = "test";
$conn = mysqli_connect($sname,$uname,$password,$db_name);

$imageName = $_FILES['reviewImage']['name'];
$tmpName = $_FILES['reviewImage']['tmp_name'];
$imageSize = $_FILES['reviewImage']['size'];

// get the image file extension
$img_ex=pathinfo($imageName, PATHINFO_EXTENSION);
// convert string to lowercase
$img_ex_lc=strtolower($img_ex);
// image extension validation
$allowed_exs = array("jpg", "jpeg", "png");

    if (!in_array($img_ex_lc, $allowed_exs)){
        echo "Invalid";
        exit;
    }else{
          if($imageSize>100000000){
              echo "Oversize";
              exit;                  
          }else{            
                // generate new image name
                $newImageName = uniqid("IMG-", true).'.'.$img_ex_lc;
                $imgUploadPath = 'TravelWebsiteResource/reviewPictures/'.$newImageName;

                $_SESSION['newImageName'] = $newImageName;
                 
                move_uploaded_file($tmpName, $imgUploadPath);
                echo "Success";
                exit;   
          }
    } 
   
?>
