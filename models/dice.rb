class Dice

	def initialize
	end

  # Throws a dice
	# @param nb_dice [Integer] the number of dice that are thrown
  # @return [Array] The array of results.
  def throw_dice nb_dice
		Array.new(nb_dice) { rand(6) +1 }
	end


end
