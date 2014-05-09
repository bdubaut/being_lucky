class Dice

	DICE_VALUES = [1,2,3,4,5,6]

	def initialize

	end

	def throw nb_dice
		DICE_VALUES.sample nb_dice
	end


end
