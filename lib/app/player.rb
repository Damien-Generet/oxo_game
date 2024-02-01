class Player
	attr_accessor :name, :symbol, :victory_count

	def initialize(name, symbol)
		@name = name
		@symbol = symbol
		@victory_count = 0
	end

	
end