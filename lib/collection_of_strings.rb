class CollectionOfStrings

	def all 
		[]
	end

	def pickOne
		strings = all()
		return strings[Random.rand(strings.length)]
	end

end