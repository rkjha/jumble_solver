module JumbleSolver
  class Jumble
  	def initialize
  		# loading the dictionary
  		@word_list = load_dictionary
  	end

  	def load_dictionary
	    wl = []
	    file = File.open("/usr/share/dict/words", 'r')
	    file.each_line do |line|
	      wl.push(line.chomp)
	    end
	    wl
  	end

  	def solve letters
 			valid_words = []
 			letters = letters.downcase.split(//)
 			no_of_letters = letters.length
	    @word_list.each do |word|
	      next unless word.length == no_of_letters
	      word_copy = word
	      word = word.split(//)
	      letters.each do |letter|
	        if word.include? letter
	          word.delete_at word.index(letter)
	        end
	      end
	      if word.length == 0
	        valid_words.push(word_copy)
	      end
	    end 
	    valid_words 		
  	end

  end
end