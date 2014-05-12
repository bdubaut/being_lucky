require "./models/dice"

class BeingLucky

	# dice_res is the array returned by a throw
	def initialize(dice_res)
		@dice = dice_res
    p @dice
	end

	def dice
		@dice
	end


	def hash_score
		res_hash = {}
		res_hash[:one] = @dice.count(1)
		res_hash[:two] = @dice.count(2)
		res_hash[:three] = @dice.count(3)
		res_hash[:four] = @dice.count(4)
		res_hash[:five] = @dice.count(5)
		res_hash[:six] = @dice.count(6)
		res_hash
	end

	def score
		h = self.hash_score
		s = 0
		if h[:one] >= 3
			s = s + 1000
		else
			s = s + h[:one] * 100
		end
		if h[:five] >= 3
			s = s + 500
		else
			s = s + h[:five] * 50
		end
		s = s + 200 if h[:two] == 3
		s = s + 300 if h[:three] == 3
		s = s + 400 if h[:four] == 3
		s = s + 600 if h[:six] == 3
		# "you scored #{s} points."
    return s
	end





end