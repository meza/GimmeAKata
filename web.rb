require 'sinatra'
require File.dirname(__FILE__)+'/lib/langs.rb'
require File.dirname(__FILE__)+'/lib/katas.rb'

get '/' do
	'<div id="kata">'+Katas.new.pickOne+'</div>' +
	'<div id="lang">'+Langs.new.pickOne+'</div>'
end