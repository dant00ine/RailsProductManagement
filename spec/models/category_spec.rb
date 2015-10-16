require 'rails_helper'
RSpec.describe Category, type: :model do
  it 'requires a name' do
    category = Category.create(name:'')
    category.valid?
    expect(category.errors[:name].any?).to eq(true)
  end
  describe 'relationships' do
    it 'has many products' do
      @category = Category.create(name: 'Ninjas')
      Product.create(name: 'Sasuke', description: 'the rival', pricing:10.00, category: Category.find(1))
      Product.create(name: 'Sakura', description: 'the lover', pricing:10.00, category: Category.find(1))
      Product.create(name: 'Naruto', description: 'the main', pricing:10.00, category: Category.find(1))

      expect(Category.find(1).products.count).to eq(3)
    end
  end
end