require 'sinatra'
require File.dirname(__FILE__)+'/lib/langs.rb'
require File.dirname(__FILE__)+'/lib/katas.rb'

get '/' do

	'<a href="https://github.com/meza/GimmeAKata" target="_blank">'+
	'<img style="position: absolute; top: 0; right: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_right_darkblue_121621.png" alt="Fork me on GitHub">'+
	'</a>'+
	'<div id="kata">'+Katas.new.pickOne+'</div>' +
	'<div id="lang">'+Langs.new.pickOne+'</div>' +


"<script type=\"text/javascript\">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-33215722-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>"

end