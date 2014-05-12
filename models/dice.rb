class Dice

	def initialize

	end

	def throw_dice nb_dice
		Array.new(nb_dice) { rand(6) +1 }
	end


end
