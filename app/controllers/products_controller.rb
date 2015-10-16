class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update(name: params[:name], description: params[:description], pricing: params[:pricing])
    redirect_to '/products'
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to '/products'
  end

  def create
    Product.create(name: params[:name], description: params[:description], pricing: params[:pricing])
    redirect_to '/products'
  end

  def new
  end
end
