require 'rails_helper'
RSpec.describe Comment, type: :model do
  it 'requires a comment' do
    comment = Comment.create(content:'')
    comment.valid?
    expect(comment.errors[:content].any?).to eq(true)
  end
  describe 'relationships' do
    it 'belongs to a product' do
      @category = Category.create(name: "Ninjas")
      @product = Product.create(category: @category, name: "stuff", description:"sudfddsfsdp", pricing:15.22)
      @comment = Comment.create(content:"so boring", product: Product.find(@product.id))
      puts @comment
      expect(@product.comments.include?(@comment)).to eq(true)
    end
  end
end