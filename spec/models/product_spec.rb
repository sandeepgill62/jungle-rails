require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
  
    it "is valid" do
      @green_plant = Product.new
      @plants = Category.new
      @plants.name = 'Test'
      @green_plant.name = 'Test' # invalid state
      @green_plant.price_cents = 1212
      @green_plant.quantity = 12
      @green_plant.category = @plants
      expect(@green_plant.valid?).to be true
    end

    it "should not let user be created without name" do
      @green_plant = Product.new
      @green_plant.name = nil # invalid state
      @green_plant.valid?
      expect(@green_plant.errors[:name]).to  include("can't be blank")
  
      @green_plant.name = 'Test' # valid state
      @green_plant.valid?
      expect(@green_plant.errors[:name]).not_to  include("can't be blank")
    end

    it "should not let user be created without price" do
      @green_plant = Product.new
      @green_plant.price_cents = nil # invalid state
      @green_plant.valid?
      expect(@green_plant.errors[:price_cents]).to  include("is not a number")
  
      @green_plant.price_cents = 1212 # valid state
      @green_plant.valid? 
      expect(@green_plant.errors[:price_cents]).not_to  include("can't be blank")
    end
  
    it "should not let user be created without quantity" do
      @green_plant = Product.new
      @green_plant.quantity = nil # invalid state
      @green_plant.valid?
      expect(@green_plant.errors[:quantity]).to  include("can't be blank")
  
      @green_plant.quantity = 3 # valid state
      @green_plant.valid? 
      expect(@green_plant.errors[:quantity]).not_to  include("can't be blank")
    end
  
    it "should not let user be created without category id" do
      @plants = Category.new
      @green_plant = Product.new
      @green_plant.category = nil # invalid state
      @green_plant.valid?
      expect(@green_plant.errors[:category]).to  include("can't be blank")

      @green_plant.category = @plants # valid state
      @green_plant.valid? 
      expect(@green_plant.errors[:category]).not_to  include("can't be blank")
    end
  end
end