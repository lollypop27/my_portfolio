$(document).foundation();
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-1288959-42', 'auto');
ga('send', 'pageview');

$(document).ready(function () {
  var flash = $('#flash');
  if (flash.length > 0) {
    window.setTimeout(function () {
      flash.fadeTo(500, 0).slideUp(500, function () {
        $(this).remove();
      });
    }, 5000);
  }
});

function fixedFooter() {
    var footer = $(".footer"); //or your footer class
    height = footer.height();
    paddingTop = parseInt(footer.css('padding-top'), 10);//zero if is undefined
    paddingBottom = parseInt(footer.css('padding-bottom'), 10);//zero if is undefined
    totalHeight = (height + paddingTop + paddingBottom);
    footerPosition = footer.position();
    windowHeight = $(window).height();
    height = (windowHeight - footerPosition.top) - totalHeight;
    if (height > 0) {
      footer.css({
        'margin-top': (height) + 'px'
      });
    }
  }

  $(document).ready(function () {
    fixedFooter(); //at page load

  });
  $(window).resize(function () {
    fixedFooter(); //at page resize
  });

  (function() {

  	// Create input element for testing
  	var inputs = document.createElement('input');

  	// Create the supports object
  	var supports = {};

  	supports.autofocus   = 'autofocus' in inputs;
  	supports.required    = 'required' in inputs;
  	supports.placeholder = 'placeholder' in inputs;

  	// Fallback for autofocus attribute
  	if(!supports.autofocus) {

  	}

  	// Fallback for required attribute
  	if(!supports.required) {

  	}

  	// Fallback for placeholder attribute
  	if(!supports.placeholder) {

  	}

  	// Change text inside send button on submit
  	var send = document.getElementById('contact-submit');
  	if(send) {
  		send.onclick = function () {
  			this.innerHTML = '...Sending';
  		}
  	}

  })();
