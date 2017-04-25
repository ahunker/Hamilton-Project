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
    var divs = document.getElementsByClassName("main");
            for (var m = 0; m < divs.length; m++) {
                /*divs[m].classList.toggle("on")*/
            if(divs[m].style.display=='none') {
            divs[m].style.display='block';
            
        }
        else {
        divs[m].style.display='none';
        }
            }
}

/*Next step is 'this' ID*/