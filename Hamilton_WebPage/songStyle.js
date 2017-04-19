function init() {
    var fieldset = document.getElementsByTagName('input');
    for (var i = 0; i < fieldset.length; i++) {
        fieldset[i].addEventListener('click', toggle, false);
    }
}

function toggle() {
    var id = this.id;
    switch (id) {
        case "persNametoggle": {
            var persName = document.getElementsByClassName("persName");
            for (var i = 0; i < persName.length; i++) {
                persName[i].classList.toggle("on")
            }
        };
        break;
        case "placeNametoggle": {
            var placeName = document.getElementsByClassName("placeName");
            for (var i = 0; i < placeName.length; i++) {
                placeName[i].classList.toggle("on")
            }
        };
        break;
        case "datetoggle": {
            var date = document.getElementsByClassName("date");
            for (var i = 0; i < date.length; i++) {
                date[i].classList.toggle("on")
            }
        };
        break;
        case "phrtoggle":{
            var phr = document.getElementsByClassName("phr");
            for (var i = 0; i < phr.length; i++) {
                phr[i].classList.toggle("on")
            }
        };
        break;
    }
  }

window.onload = init;