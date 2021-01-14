
function cerclenoir(){
    /*cercle noir*/
    var element = document.getElementById('cerclenoir');
    element.parentNode.removeChild(element);

    /*Alan*/
    var element2=document.getElementById('alan');
    // alert(element2.style.backgroundImage);
    element2.setAttribute("style", 'background-image: url("alan_explain.png");');
    //element2.setAttribute("src", "alan_explain.png");

    /*text*/
    document.getElementById("recup").innerHTML = "Bien </br> joué!";

    $("#invisible").css("display", "block");
    goTo("#invisible",1500);    
}

function resize(){
    var chevron = document.getElementById('chevron');
    document.getElementById("cerclenoir").style.height = chevron.width+"px";
}

window.addEventListener("resize", resize);
window.addEventListener("load", function(){
    resize();
    document.getElementById("cercle").addEventListener("click", function(){
        redirectionStore();
    }); 
}); 



function goTo(selector, timeout, cb) {
    // alert(timeout);
    var $el = $(selector);
    if (!$el[0]) return;
    var $par = $el.parent();
    if ($par.is("body")) $par = $("html, body");
    setTimeout(() => {
      $par.stop().animate({scrollTop: $el.offset().top}, 1000, cb && cb.call($el[0]));
    }, timeout || 0);
  }

  function redirectionStore() {
    var userAgent = navigator.userAgent || navigator.vendor || window.opera;  
      if (/android/i.test(userAgent)) {
          return document.getElementById("demo").href = "https://play.google.com/apps?gl=FR";
      }
      // iOS detection from: http://stackoverflow.com/a/9039885/177710
      if (/iPad|iPhone|iPod/.test(userAgent) && !window.MSStream) {
          return document.getElementById("demo").href = "https://www.apple.com/fr/ios/app-store/";
      }
     else{
        return 0;
     }
  }