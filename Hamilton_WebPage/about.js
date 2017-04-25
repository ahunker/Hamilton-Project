window.addEventListener('DOMContentLoaded',init,false);
var about1 = document.getElementById("about1")
var about2 = document.getElementById("about2")
var about3 = document.getElementById("about3")
function init() {
var buttons = document.getElementsByTagName("button");
buttons[0].addEventListener('click', toggleAbout1,false)
buttons[1].addEventListener('click', toggleAbout2, false)
buttons[2].addEventListener('click', toggleAbout3, false)
}

function toggleAbout1() {
    var about1 = document.getElementById("about1")
        if(about1.style.display=='none') {
            about1.style.display='block';
            about2.style.display='none';
            about3.style.display='none';
        }
        else {
        about1.style.display='none';
        }
}

function toggleAbout2() {
    var about2 = document.getElementById("about2")
        if(about2.style.display=='none') {
            about2.style.display='block';
            about1.style.display='none';
            about3.style.display='none';
        }
        else {
        about2.style.display='none';
        }
}

function toggleAbout3() {
    var about3 = document.getElementById("about3")
        if(about3.style.display=='none') {
            about3.style.display='block';
            about2.style.display='none';
            about1.style.display='none';
        }
        else {
        about3.style.display='none';
        }
}
