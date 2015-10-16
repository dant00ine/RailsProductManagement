class CommentsController < ApplicationController

	def index
		@comments = Comment.all
	end

	def create
		Comment.create(content: params[:comment], product: Product.find(params[:id]))
		redirect_to "/products/#{params[:id]}"
	end

	def destroy
		comment = Comment.find(params[:id])
		comment.destroy
		redirect_to "/products/#{params[:product_id]}"
	end

end
