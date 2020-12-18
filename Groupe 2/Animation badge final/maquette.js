
function cerclenoir(){
    /*cercle noir*/
    var element = document.getElementById('cerclenoir');
element.parentNode.removeChild(element);

/*Alan*/
var element2=document.getElementById('alan');
element2.setAttribute("src", "alan_explain.png");

/*text*/
document.getElementById("recup").innerHTML = "Bien </br> joué!";


/*img.attributes('id', 'alan');*/




/*$().css({
    width: 50%;
       position: absolute;
       top: 13px;
       left: 0;
       right: 3em;
});*/












}

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


// USE LIKE:
/*goTo("#cerclenoir", 1500, function() {

  // You can use `this` to reference #testimonials! yey
  $(this).append("<br>Going to #encre in 3sec!");
  goTo("#encre", 1500);

});*/

// Alternatively, without using callbacks you can do
// goTo("#testimonials", 3000);
// goTo("#contact", 6000);

// Reuse function for elements click!
$(document).ready(function(){
  $("[href^='#']").on("click", function(e) {
      e.preventDefault();
      goTo($(this).attr("href"),1500);
    });
  
});


   
