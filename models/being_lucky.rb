require "./models/dice"

class BeingLucky

	# dice_res is the array returned by a throw
	def initialize(dice_res)
		@dice = dice_res
	end

	def score
		res_hash = {}
		res_hash[:one] = @dice.count(1)
		res_hash[:two] = @dice.count(2)
		res_hash[:three] = @dice.count(3)
		res_hash[:four] = @dice.count(4)
		res_hash[:five] = @dice.count(5)
		res_hash[:six] = @dice.count(6)

		res_hash

	end

end