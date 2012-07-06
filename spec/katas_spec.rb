require 'rspec'
require 'katas'

describe Katas do

	before(:each) do
		@katas = Katas.new
		@expectedKatas = ["Bowling Game", "Roman Numerals", "Minesweeper"]
	end

	it "shouldProvideAListOfKnownKatas" do
		@katas.all.should == @expectedKatas
	    end

	it "shoudPickARandomKata" do
		results = []
		10.times { results << @katas.pickOne }

		numberOfIdentical = 0
		first = results[0]
		results.each { |kata|
			if first == kata
				numberOfIdentical+=1
			end
		}

		numberOfIdentical.should_not eq 10
	end
end