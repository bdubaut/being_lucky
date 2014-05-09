class Dice

	DICE_VALUES = [1,2,3,4,5,6]

	def initialize

	end

	def throw_dice nb_dice
		Array.new(nb_dice) { rand(6) +1 }
	end


end
