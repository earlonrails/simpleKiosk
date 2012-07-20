function Util(appFrame){
  
  var appFrame = appFrame;
  this.linkTo = function(href){
    window.setTimeout(function() {
        appFrame.src = href;
    }, 150);
  };
}
