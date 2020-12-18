function myFunction() {
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