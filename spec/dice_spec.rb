require "spec_helper"
require_relative "../models/dice"

describe Dice do
	describe "#intialize" do
	  it "creates a new Dice object" do
		  d = Dice.new
	  	expect(d.class).to eq Dice
	  end
	end
  describe "throwing a dice" do
  	it "throws a dice and returns an array with the randomly chosen score" do
		  d = Dice.new
  		possible_results = [1,2,3,4,5,6]
  		expect(possible_results).to include d.throw_dice(1)[0]
  	end
  	it "throws 5 dice (like in the real game) and should return an Array of 5 numbers" do
  		d = Dice.new
  		res = d.throw_dice(5)
  		expect(res.count).to eq 5
  		res.each do |e|
  			expect([1,2,3,4,5,6]).to include e
  		end
   	end
  end
end