
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

function resize(){
    var chevron = document.getElementById('chevron');
    document.getElementById("cerclenoir").style.height = chevron.width+"px";
}

window.addEventListener("resize", resize);
window.addEventListener("load", resize); 


