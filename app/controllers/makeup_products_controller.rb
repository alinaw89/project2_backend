class MakeupProductsController < ApplicationController

  #GET /makeup_products
  def index
    @makeup_products = MakeupProduct.all
    render json: @makeup_products
  end

  def show
    @makeup_product = MakeupProduct.find(params[:id])
    render json: @makeup_product
  end

  def create
    @makeup_product = MakeupProduct.new(makeup_product_params)
    if @makeup_product.save
      render json: @makeup_product, status: :created, location: makeup_products_url
    else
      render json: @makeup_product.errors, status: :unprocessable_entity
  end
end

  def update
    @makeup_product = MakeupProduct.find(params[:id])
    if @makeup_product.update(makeup_product_params)
      head :no_content
    else
      render json: @makeup_product.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @makeup_product = MakeupProduct.find(params[:id])
    @makeup_product.destroy
    head :no_content
  end


  private
  def makeup_product_params
    params.require(:makeup_product).permit(:picture, :name, :brand, :color, :price, :purchase_date, :image_file_name, :image_content_type, :image_file_size, :image_updated_at)
  end
end

