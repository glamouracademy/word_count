class Phrase
	def initialize(phrase)
		@phrase = phrase
	end	

	def word_count
		word_list = {}
		@phrase.downcase.scan(/\w+/).each do |word|
			word_list = process_words(word, word_list)
		end
		word_list 
	end

private

	def process_words(word, word_list)
		return word_list if word.empty?
		word_list[word] ||= 0
		word_list[word] += 1
		word_list
	end

end



# word_array = @phrase.scan(/\w+/)
# 		words_array = word_array.group_by{ |word| word.downcase }.map { |k,v| [k, v.size] }
# 		test = words_array.to_h
# 		puts test