
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
window.addEventListener("load", resize); 


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