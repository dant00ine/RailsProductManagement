require 'rails_helper'
RSpec.describe 'product edit page' do
  it 'displays form with current information of product prepopulated' do
  	@product = Product.create(name: "Dan's wise cracks", description: "What is this shit man?", pricing: 0.00)
    visit "/products/#{@product.id}/edit"
    expect(find_field('name').value).to eq(@product.name)
    expect(find_field('description').value).to eq(@product.description)
    expect(find_field('pricing').value).to eq(@product.pricing.to_s)
  end
end