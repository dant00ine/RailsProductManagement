class Product < ActiveRecord::Base
	has_many :comments
	belongs_to :category
	validates :name, :pricing, presence: true
	validates :description, length:{minimum: 7}
end
