class PigLatinizer



def piglatinize(word)
	pig_latin_array = []
	vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
	word_split = word.split("")
	if vowels.include?(word[0])
		word += "way"
		pig_latin_array << word
		@piglatinword = pig_latin_array.join
	elsif vowels.include?(word[1])
		word.slice!(0)
		word += word_split[0] += "ay"
		pig_latin_array << word
		@piglatinword = pig_latin_array.join
	elsif vowels.include?(word[2])
	     word.slice!(0)
	     word.slice!(0)
	     word += word_split[0] += word_split[1] += "ay"
	     pig_latin_array  << word
	     @piglatinword = pig_latin_array.join
 	elsif vowels.include?(word[3])
	     word.slice!(0)
	     word.slice!(0)
	     word.slice!(0)
	     word += word_split[0] += word_split[1] + word_split[2] += "ay"
	     pig_latin_array  << word
	     @piglatinword = pig_latin_array.join

end
	@piglatinword
end

def to_pig_latin(string)
  string.split.collect{|word| piglatinize(word)}.join(" ")
end


end