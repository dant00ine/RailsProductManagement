require 'rails_helper'
RSpec.describe 'listing comments' do
  it 'displays list of all comments' do
    @category = Category.create(name: 'Ninjas')
    @product = Product.create(name: 'Sasuke', description: 'the rival', pricing:10.00, category: Category.find(1))
    @comment = Comment.create(content:"so boring", product: @product)
    visit "/comments"
    expect(page).to have_text("so boring")
  end
  it 'lists comments related to particular product in product show page' do
    @category = Category.create(name: 'Ninjas')
    @product = Product.create(name: 'Sasuke', description: 'the rival', pricing:10.00, category: Category.find(1))
    @comment = Comment.create(content:"so boring", product: @product)
    visit "/products/#{@product.id}"
    expect(page).to have_text("so boring")
  end
end