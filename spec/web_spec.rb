require File.dirname(__FILE__)+'/../web.rb'
require 'rack/test'
require 'katas'
require 'langs'

def app
    Sinatra::Application
end

describe 'Random service' do
	include Rack::Test::Methods
	it "should return as cool" do
		get '/'
		last_response.should be_ok
	end

	it "should respond with html as default" do
		get '/'
		katas = Katas.new.all.join("|")
		langs = Langs.new.all.join("|")
		kataReg = '<div id="kata">'+katas+'<\/div>'
		langReg = '<div id="lang">'+langs+'<\/div>'

		last_response.body.should =~ Regexp.new(kataReg)
		last_response.body.should =~ Regexp.new(langReg)
	end

	it "should randomize the values" do
		results = []
		10.times {
			get '/'
			results << last_response.body
		}

		first = results[0]
		similarCount = 0
		results.each { |result|
			if result == first
				similarCount += 1
			end
		}
		similarCount.should_not == 10
	end

end