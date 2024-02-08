// counting the words of review content
function updateCharacterCountContent() {
    // Get the input element
    const inputElement = document.getElementById("reviewContent");
    // Get the character count
    const characterCount = document.getElementById("characterCountContent");
    // Update the character count display
    let reviewContent = inputElement.value;
    reviewContent = reviewContent.trim();
    const words = reviewContent.split(/\s+/);
    if(words[0] === ""){
        characterCount.innerText = 0;
    }else{
        characterCount.innerText = words.length;
    }
    if(words.length <30 || words.length >500 ){
        characterCount.style.color = "red";
        document.getElementById("submitButton").disabled = true;
        document.getElementById("alertOfCharacterCount").style.display = "block";
    }else{
        characterCount.style.color = "black";
        document.getElementById("submitButton").disabled = false;
        document.getElementById("alertOfCharacterCount").style.display = "none";
    }
}

// counting the words of title
function updateCharacterCountTitle() {
    // Get the input element
    const inputElement = document.getElementById("reviewTitle");
    // Get the character count
    const characterCount = document.getElementById("characterCountTitle");
    // Update the character count display
    let reviewContent = inputElement.value;
    reviewContent = reviewContent.trim();
    const words = reviewContent.split(/\s+/);
    if(words[0] === ""){
        characterCount.innerText = 0;
    }else{
        characterCount.innerText = words.length;
    }
    if(words.length <3 || words.length >15 ){
        characterCount.style.color = "red";
        document.getElementById("submitButton").disabled = true;
        document.getElementById("alertOfCharacterCount").style.display = "block";
    }else{
        characterCount.style.color = "black";
        document.getElementById("submitButton").disabled = false;
        document.getElementById("alertOfCharacterCount").style.display = "none";
    }
}

// checking if the selected picture for uploading is valid, and send alert
function submitData(){
$(document).ready(function(){
    var formData = new FormData();
    var files = $('#reviewImage')[0].files;
    formData.append('reviewImage',files[0]);

    $.ajax({
        url: 'TravelWebsite_SaveImage.php',
        type: 'post',
        data: formData,
        contentType: false,
        processData: false,
        success: function(response){
            // response = response.trim();
            if(response == "Invalid"){
                alert("Invalid Extension!");
            } else if(response == "Success"){
                alert("Successfully Added!");
            } else if(response == "Oversize"){
                alert("Oversized Picture!");
            } else{
                alert("Please Choose a Picture!");
            }
        }
    });
});
}

//limit the number of destination introduction to show in the destinations page
//By waiting for the DOMContentLoaded(Document Object Model) event, you ensure that your JavaScript code won't run until the DOM is fully loaded, avoiding potential issues with trying to access elements that haven't been created yet. 
//This event is particularly useful when your JavaScript code interacts with the structure of the HTML document.
document.addEventListener('DOMContentLoaded', function() {
    let wordLimit = 80;
    // Select all elements with id "destinationIntroduction_text"
    let destinationIntroductionElements = document.querySelectorAll('#destinationBriefIntroduction_text');
    // Loop through each element and apply the word limit
    destinationIntroductionElements.forEach(function(element) {
        let destinationIntroductionContent = element.textContent
        //Splits the content of the paragraph into an array of words using the split method. The space (' ') is used as the delimiter.
        let words = destinationIntroductionContent.split(' ');
        //Uses the slice method to extract the first wordLimit number of words from the array of words. Then, the join method combines these words back into a string using a space (' ') as the separator. 
        let shortenedContent = words.slice(0, wordLimit).join(' ');
        element.textContent= shortenedContent + '......';
    });
});


document.addEventListener('DOMContentLoaded', function() {
    let wordLimit = 25;
    let reviewContentElements = document.querySelectorAll('#briefReviewContent');
    reviewContentElements.forEach(function(element) {
        let reviewContent = element.textContent
        let words = reviewContent.split(' ');

        let shortenedContent = words.slice(0, wordLimit).join(' ');
        element.textContent= shortenedContent + '......';
    });
});