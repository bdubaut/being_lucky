require "spec_helper"
require_relative "../models/being_lucky"

describe BeingLucky do
	describe "#initialize" do
		it "initilizes a turn" do
			dice_res = [5,2,1,1,3]
			game = BeingLucky.new dice_res
			expect(game.class).to eq BeingLucky
			expect(game.dice).to eq dice_res
		end
	end
	describe "#dice" do
		it "returns the dice results" do
			dice_res = [5,2,1,1,3]
			game = BeingLucky.new dice_res
			expect(game.dice).to eq dice_res
		end
	end
	describe "#hash_score" do
		it "returns the hash counting the results" do
			dice_res = [5,2,1,1,3]
			h = {one: 2, two: 1, three: 1, four: 0, five: 1, six: 0}
			game = BeingLucky.new dice_res
			expect(game.hash_score).to eq h
		end
	end
	describe "#score" do
		it "calculates the score of a turn" do
			dice_res = [2,4,4,5,4]
			expect(BeingLucky.new(dice_res).score).to eq 450
		end
	end

end


