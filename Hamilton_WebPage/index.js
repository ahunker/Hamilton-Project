window.onload = init
function init() {
    rotate();
    rotate2();
}

            
            function rotate() {
          var images = new Array ('01.jpg', '02.jpg', '03.jpg', '04.jpg', '05.jpg', '06.jpg', '07.jpg', '08.jpg', '09.jpg', '10.jpg', '11.jpg', '12.jpg', '13.jpg', '14.jpg', '15.jpg', '16.jpg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("rotator").src = images[thisImage];

         setTimeout(rotate, 8 * 1000);
          }
           function rotate2() {
          var images2 = new Array ('17.jpg', '18.jpg', '19.jpg', '20.jpg', '21.jpg', '22.jpg', '23.jpg', '24.jpg', '25.jpg', '26.jpg', '27.jpg', '28.jpg', '29.jpg', '30.jpg', '31.jpg', '32.jpg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images2.length)) ;

          document.getElementById("rotator2").src = images2[thisImage];

         setTimeout(rotate2, 8 * 1000);
          }

       