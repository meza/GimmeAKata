require 'sinatra'
require File.dirname(__FILE__)+'/lib/langs.rb'
require File.dirname(__FILE__)+'/lib/katas.rb'

get '/' do

	'<a href="https://github.com/meza/GimmeAKata" target="_blank">'+
	'<img style="position: absolute; top: 0; right: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_right_darkblue_121621.png" alt="Fork me on GitHub">'+
	'</a>'+
	'<div id="kata">'+Katas.new.pickOne+'</div>' +
	'<div id="lang">'+Langs.new.pickOne+'</div>'
end