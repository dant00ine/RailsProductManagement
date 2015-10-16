require 'rails_helper'
RSpec.describe 'deleting a product' do
  it 'deletes product and redirects to products page' do
    @product = Product.create(name: "Dan's wise cracks", description: "What is this shit man?", pricing: 0.00)
    visit '/products'
    click_button 'Delete Product'
    expect(current_path).to eq('/products')
    expect(page).to_not have_text("Dan's wise cracks")
  end
end