window.addEventListener('DOMContentLoaded',init,false);
function init() {
var buttons = document.getElementsByTagName("button");
buttons[0].addEventListener('click', toggleAbout,false)
buttons[1].addEventListener('click', toggleAbout2, false)
buttons[2].addEventListener('click', toggleAbout3, false)
}

function toggleAbout() {
    var About1 = document.getElementById("about")
        if(about1.style.display=='none') {
            about1.style.display='block';
        }
        else {
        about1.style.display='none';
        }
}

function toggleAbout2() {
    var about2 = document.getElementById("about2")
        if(about2.style.display=='none') {
            about2.style.display='block';
        }
        else {
        about2.style.display='none';
        }
}

function toggleAbout3() {
    var about3 = document.getElementById("about3")
        if(about3.style.display=='none') {
            about3.style.display='block';
        }
        else {
        about3.style.display='none';
        }
}