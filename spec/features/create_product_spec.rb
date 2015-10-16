require 'rails_helper'
RSpec.describe 'creating product' do
  it 'creates a new product and redirect to products page' do
    visit '/products/new'
    fill_in 'name', with: 'Stuff'
    fill_in 'description', with: "More stuff"
    fill_in 'pricing', with: '10.00'
    click_button 'Create New Product'
    expect(current_path).to eq('/products')
    expect(page).to have_text('Stuff')
  end
end