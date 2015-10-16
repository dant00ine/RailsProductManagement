require 'rails_helper'
RSpec.describe 'creating a comment for a product' do
  it 'creates a new comment and redirects to product show page' do
    @category = Category.create(name: 'Ninjas')
    @product = Product.create(name: 'Sasuke', description: 'the rival', pricing:10.00, category: Category.find(1))
    visit "/products/#{@product.id}"
    fill_in 'comment', with: 'This is my comment'
    click_button 'Create Comment'
    expect(current_path).to eq("/products/#{@product.id}")
    expect(page).to have_text("This is my comment")
  end
end