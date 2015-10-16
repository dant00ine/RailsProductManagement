require 'rails_helper'
RSpec.describe 'new comment' do
  it 'displays correct fields to create new comment for a particular product' do
    @category = Category.create(name: 'Ninjas')
    @product = Product.create(name: 'Sasuke', description: 'the rival', pricing:10.00, category: Category.find(1))
    visit "/products/#{@product.id}"
    expect(page).to have_field('comment')
  end
end