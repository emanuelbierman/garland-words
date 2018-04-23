
class Garland
	def initialize(word)
		@word = word
	end

	def garland_degree
		@word.match(/([a-z]{2,4}).*\1\b/).size
	end

	def is_garland?
		if garland_degree > 0
			puts "#{@word} is a garland word of degree #{garland_degree}."
		else
			puts "#{@word} is not a garland word."
		end
	end

end

request = Garland.new(gets.chomp)
request.is_garland?
