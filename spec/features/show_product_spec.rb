require 'rails_helper'
RSpec.describe 'product details page' do
  it 'displays information about product' do
    @product = Product.create(name: "Dan's wise cracks", description: "What is this shit man?", pricing: 0.00)
    visit "/products/#{@product.id}"
    expect(page).to have_text("Dan's wise cracks")
    expect(page).to have_text("What is this shit man?")
    expect(page).to have_text("$0.00")
  end
end