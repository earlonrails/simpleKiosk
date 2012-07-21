var Btn = {
  doc : document,
  
  // Draw can be used before the page renders
  draw : function(text, klass, conf, doc) {
    var html = this.create(text, klass, conf)
    if (doc){
      doc.write(html);
    } else { 
      this.doc.write(html);
    }
  },
  // Create will return the html of a button.
  create : function(text, klass, conf) {
    var html = "<div class=\"" + klass + "\" onmousedown=\"" +  conf.click  + "\">" +
    "<div unselectable='on' class='txt'>" + text + "</div>" + 
    "</div>";
    return html;
  }
};
