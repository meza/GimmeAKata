require 'sinatra'
require 'langs'
require 'katas'

get '/' do
	'<div id="kata">'+Katas.new.pickOne+'</div>' +
	'<div id="lang">'+Langs.new.pickOne+'</div>'
end