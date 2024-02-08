//create options of dropdown box for year selector and month selector
function optionYears() {
    let currentYear = new Date().getFullYear();
    let selectYear = document.getElementById('year');

    for (let i = currentYear; i >= currentYear - 50; i--) {
        let optionYear = document.createElement('option');
        optionYear.value = i;
        optionYear.text = i;
        selectYear.appendChild(optionYear);
    }
}
optionYears()

function optionMonths() {
    let months = [
        "January", "February", "March", "April", "May", "June",
        "July", "August", "September", "October", "November", "December"
    ];
    let selectMonth = document.getElementById('month');

    for (let i = 0; i < months.length; i++) {
        let optionMonth = document.createElement('option');
        optionMonth.value = months[i]; 
        optionMonth.text = months[i];
        selectMonth.appendChild(optionMonth);
    }
}
optionMonths()

// preview the image before uplading
document.getElementById('reviewImage').onchange = function (evt) {
    const [file] = this.files;
    if (file) {
        document.getElementById('img').src = URL.createObjectURL(file);
    }
};



