require 'rspec'
require 'langs'

describe Langs do
	before(:each) do
		@langs = Langs.new
		@expectedLanguages = ["php", "java", "ruby", "javascript", "python"]
	end

	it "shouldReturnTheLanguages" do
		@langs.all.should eq @expectedLanguages
	end

	it "shoudPickARandomKata" do
		results = []
		10.times { results << @langs.pickOne }

		numberOfIdentical = 0
		first = results[0]
		results.each { |lang|
			if first == lang
				numberOfIdentical+=1
			end
		}
		numberOfIdentical.should_not eq 10
        end
end