class Player
	attr_accessor :name, :symbol, :victory_count, :value

	def initialize(name, symbol)
		@name = name
		@symbol = symbol
		@victory_count = 0
		@value = (@symbol=="X" ? 1 : 2)
	end

	def presentation
		puts "Introducing player #{@name}"
	end

	
end