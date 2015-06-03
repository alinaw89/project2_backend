class CosmeticProductsController < ApplicationController

  #GET /cosmetic_products
  def index
    @cosmetic_products = CosmeticProduct.all
    render json: @cosmetic_products
  end

  def show
    @cosmetic_product = CosmeticProduct.find(params[:id])
    render json: @cosmetic_product
  end

  def create
    @cosmetic_product = CosmeticProduct.new(cosmetic_product_params)
    if @cosmetic_product.save
      render json: @cosmetic_product, status: :created, location: cosmetic_products_url
    else
      render json: @cosmetic_product.errors, status: :unprocessable_entity
  end
end

  def update
    @cosmetic_product = CosmeticProduct.find(params[:id])
    if @cosmetic_product.update(cosmetic_product_params)
      head :no_content
    else
      render json: @cosmetic_product.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @cosmetic_product = CosmeticProduct.find(params[:id])
    @cosmetic_product.destroy
    head :no_content
  end


  private
  def cosmetic_product_params
    params.require(:cosmetic_product).permit(:picture, :name, :brand, :color, :price, :purchase_date, :image_file_name, :image_content_type, :image_file_size, :image_updated_at)
  end
end


