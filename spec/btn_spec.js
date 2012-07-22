describe("Btn", function() {


  it("should use create to return some html for a button", function() {
    html = Btn.create("Touch to continue.","blueButton",
      { click : "console.log('touched')" }
    );
    expect(html).toEqual('<div class="blueButton" onmousedown="console.log(\'touched\')"><div unselectable=\'on\' class=\'txt\'>Touch to continue.</div></div>');

  });

});