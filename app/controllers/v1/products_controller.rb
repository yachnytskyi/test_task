class V1::ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all

    render json: {status: 'SUCCESS', message:'Loaded products', data:@products},
    status: :ok
  end

  def show
    render json: {status: 'SUCCESS', message:'Loaded product', data:@product},
    status: :ok

  end

  def create
    @product = Product.new(product_params)

    if @product.save
      render json: {status: 'SUCCESS', message:'Saved product', data:@product},
      status: :ok
    else
      render json: {status: 'ERROR', message:'Product not saved',
      data:@product.errors}, status: :unprocessable_entity
    end
  end

  def update
    if @product.update_attributes(product_params)
      render json: {status: 'SUCCESS', message: 'Updated product', data:@product},
      status: :ok
    else
      render json: {status: 'ERROR', message:'Product not updated',
      data:@product.errors}, status: :unprocessable_entity
    end
  end

  def destroy
    if @product.destroy
      render json: {status: 'SUCCESS', message:'Deleted product', data:@product},
      status: :ok
    else
      head(:unprocessable_entity)
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :price)
  end
end
