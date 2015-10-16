require 'rails_helper'

RSpec.describe 'listing products' do 
	it 'displays correct fields for create product' do 
		visit '/products/new'
		expect(page).to have_field('Name')
		expect(page).to have_field('Description')
		expect(page).to have_field('Pricing')
	end
end
