window.addEventListener('DOMContentLoaded',init,false);
var about1 = document.getElementById("about1")
var about2 = document.getElementById("about2")
var about3 = document.getElementById("about3")
function init() {
var buttons = document.getElementsByTagName('button');
    for (var i = 0; i < buttons.length; i++) {
        buttons[i].addEventListener('click', toggle, false);     
}
}
function toggle() {
window.alert("function lineShow is firing, and this.id is: " + this.id);
    hideOthers()
    var divID = 'about' + this.id
    var selDiv = document.getElementById(divID)
    selDiv.style.display= 'block';
}

function hideOthers() {
var divs = document.getElementsByClassName('main')
for (var d = 0; d < divs.length; d++) 
divs[d].style.display='none';
}
