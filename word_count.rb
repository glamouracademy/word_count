class Phrase
	def initialize(phrase)
		@phrase = phrase
	end

	def word_count
		word_array = @phrase.scan(/\w+/)
		words_array = word_array.group_by{ |word| word.downcase }.map { |k,v| [k, v.size] }
		words_array.to_h
	end

end

