require File.dirname(__FILE__)+'/collection_of_strings.rb'

class Langs < CollectionOfStrings

	def all
		return ["php", "java", "ruby", "javascript", "python"]
	end

end