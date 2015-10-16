require 'rails_helper'
RSpec.describe Product, type: :model do
  it 'requires a name' do
    @product = Product.create(name: '')
    @product.valid?
    expect(@product.errors[:name].any?).to eq(true)
  end
  it 'requires a pricing' do
    @product = Product.create(pricing: '')
    @product.valid?
    expect(@product.errors[:pricing].any?).to eq(true)
  end
  it 'requires a description to be at least 7 characters' do
    @product = Product.create(description: '')
    @product.valid?
    expect(@product.errors[:description].any?).to eq(true)
  end
  describe 'relationships' do
    it 'belongs to a category' do
      @category = Category.create(name: "Ninjas")
      @product = Product.create(category: @category, name: "stuff", description:"sup", pricing:15.22)
      expect(@product.category).to eq(@category)
    end
  end
end