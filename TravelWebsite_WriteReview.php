<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NZ TravelMate | Write a Review</title>
    <link href="TravelWebsite_WriteReview.css" rel="stylesheet" type="text/css">
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="module" src="TravelWebsite.js"></script>
    <script type= "text/javascript" src="TravelWebsite2.js"></script>>
</head>
<body>
    <?php include 'TravelWebsite_logo_menu.php'; ?>

    <!-- navigation bar -->    
    <p class="navigationBar"><a href="TravelWebsite_Home.php">Home</a> | <a href="TravelWebsite_Review.php">Review</a> | Write a review</p>

<main>
    <!-- review form -->
    <form method="post" action="TravelWebsite_Submitdata.php" enctype= "multipart/form-data">
        <!-- selector for the travel destination -->
        <p class="inputTitle">Where did you go?</p>
        <select id = "location" name="location" required>
        <option value="" disabled selected>Choose the place</option>
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

        <!-- selector for the travel year and month-->
        <p class="inputTitle">When did you go?</p>
        <select name = "selectorYear" id="year" required>
            <option value="" disabled selected>Choose the year</option>
        </select>
        <select  type = "text" name = "selectorMonth" id="month" required>
            <option value="" disabled selected>Choose the month</option>
        </select>

        <!-- input box for review -->
        <p class="inputTitle">Write your review</p>
        <textarea required id = "reviewContent" name = "reviewContent" onkeyup="updateCharacterCountContent()" onpaste="updateCharacterCountContent(this)"  placeholder = "The views were amazing! Share your stories:)......"></textarea>
        <p id = "contentInstruction" class="inputInstruction"><span id = "characterCountContent" >0</span>/500 characters (between 30 and 1000 characters)</p>

        <!-- input box for title -->
        <p class="inputTitle">Title your review</p>
        <input  type = "text" id="reviewTitle" name="reviewTitle" onkeyup="updateCharacterCountTitle()" onpaste="updateCharacterCountTitle(this)" required placeholder = "Give us the gist of your experience"/>
        <p id = "contentInstruction" class="inputInstruction"><span id = "characterCountTitle" >0</span>/15 (between 2 and 15 characters)</p>

<div class="container">
        <!-- check box for declaration-->
        <div class="submission">
        <input type = "checkbox" id = "checkbox" required />
        <lable for ="checkbox" class="inputInstruction">I certify that this review is based on my own experience and is my genuine opinion of this establishment. I understand that NZ TravelMate has a zero-tolerance policy on fake reviews.</lable>
        
        <!-- submit review button -->
        <p></p><button type="submit" id = "submitButton" name = "submitButton">Submit</button>
        <p id="alertOfCharacterCount" style="display:none; font-size:25px; font-weight:700; color:red;">Your title or review is too long or too short!</p>
        </div>
    </form> 

    <!-- upload images -->
    <div class="upladePicture">
    <form method="post" action="TravelWebsite_SaveImage.php.php" enctype= "multipart/form-data">
        <p class="inputTitle">Add a picture</p>     
        <p class="inputInstruction">(Optional)</p>   
        <input type="file" name="reviewImage" id="reviewImage">
        <!-- preview image -->
        <div class = "preview">
        <img src ="TravelWebsiteResource/placeholder.png" id = "img" alt="Preview" style = "width: 100%; height:100%;">
        </div>
        <p class="inputInstruction">(The picture shoule be less than 1mb with the format of "jpg", "jpeg", "png")</p>
        <button type="button" id = "saveImage" name = "saveImage" onclick="submitData()">Confirm</button>
    </div>
</div>
    </form>
</main>

<!-- footer -->
<footer>
<p>© 2023 NZ TravelMate All rights reserved.</p>
<p>This is the version of our website addressed to speakers of English in New Zealand. If you are a resident of another country or region, please select the appropriate version of Tripadvisor for your country or region in the drop-down menu.</P>
</footer>


</body>
</html>
