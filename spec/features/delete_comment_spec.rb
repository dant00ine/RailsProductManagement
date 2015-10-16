require 'rails_helper'
RSpec.describe 'deleting a comment' do
  it 'deletes comment and redirects to product show page' do
     @category = Category.create(name: 'Ninjas')
     @product = Product.create(name: 'Sasuke', description: 'the rival', pricing:10.00, category: Category.find(1))
     @comment = Comment.create(content:"yo", product:@product)
     visit "/products/#{@product.id}"
     click_button 'Destroy'
     expect(current_path).to eq("/products/#{@product.id}")
     expect(page).to_not have_text("yo")
  end
end