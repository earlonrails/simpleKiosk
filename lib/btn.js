var Btn = {
  doc : document,
  
  draw : function(text, klass, conf, doc) {
    var html = "<div class=\"" + klass + "\" onmousedown=\"" +  conf.click  + "\">" +
    "<div unselectable='on' class='txt'>" + text + "</div>" + 
    "</div>";
    if (doc){
      doc.write(html);
    } else { 
      this.doc.write(html);
    }
    
  }
};
