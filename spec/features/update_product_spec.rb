require 'rails_helper'
RSpec.describe 'updating product' do
  it 'updates product and redirects to products page' do
    @product = Product.create(name: "Dan's wise cracks", description: "What is this shit man?", pricing: 0.00)
    visit "/products/#{@product.id}/edit"
    fill_in 'name', with: "Erika's wise cracks"
    fill_in 'pricing', with: '350.50'
    click_button 'Update Product'
    expect(current_path).to eq('/products')
    expect(page).to have_text("Erika's wise cracks")
    expect(page).to have_text("350.50")
    expect(page).to_not have_text("Dan's wise cracks")
    expect(page).to_not have_text("0.00")
  end
end