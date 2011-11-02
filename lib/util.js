function linkTo(href) {
    window.setTimeout(function() {
        location.href = href;
    }, 150);
}

var Btn = {
	doc : document,
	
	draw : function(text, klass, conf) {
		var html = "<div class=\"" + klass + "\" onmousedown=\"" +  conf.click  + "\">" +
		"<div unselectable='on' class='txt'>" + text + "</div>" + 
		"</div>";
	this.doc.write(html);

};