require "./models/dice"

class BeingLucky

	def initialize(dice)
		@dice = dice
	end

	def score
		@dice.throw_dice 5
	end

end