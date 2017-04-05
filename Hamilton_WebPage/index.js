window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('01.jpg', '02.jpg', '03.jpg', '04.jpg', '05.jpg', '06.jpg', '07.jpg', '08.jpg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("rotator").src = images[thisImage];

         setTimeout(rotate, 8 * 1000);
          }

       