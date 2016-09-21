require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)!
 Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:brownie) { Dessert.new("brownie", 100) }

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq("brownie")
    end

    it "sets a quantity" do
      expect(brownie.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("cake", "tons") }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do

    it "adds an ingredient to the ingredients array" do
        brownie.add_ingredient('flour')
        expect(brownie.ingredients).to eq(['flour'])
      end
  end

  describe "#mix!" do
    before(:each) do
      brownie.add_ingredient('flour')
      brownie.add_ingredient('eggs')
      brownie.add_ingredient('chocolate')
      brownie.mix!
    end
    it "shuffles the ingredient array" do
      expect(brownie.ingredients).to_not eq(['flour','eggs','chocolate'])
      expect(brownie.ingredients.sort).to eq(['chocolate','eggs','flour'])
    end

  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      brownie.eat(5)
      expect(brownie.quantity).to eq(95)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{brownie.eat(1500)}.to raise_error("not enough left!")
    end
  end
end
