class CosmeticProductsController < ProtectedController

  #GET /cosmetic_products
  def index

    @cosmetic_products = current_user.cosmetic_products
    # @cosmetic_products = CosmeticProduct.all CHANGE BACK TO THIS IF NEEDED
    render json: @cosmetic_products
  end

  def show
    @cosmetic_product = CosmeticProduct.find(params[:id])
    # @cosmetic_products = CosmeticProduct.find_by user_id: @current_user
    render json: @cosmetic_product
  end

  def create
    @cosmetic_product = current_user.cosmetic_products.new(cosmetic_product_params)
    # @cosmetic_product = CosmeticProduct.new(cosmetic_product_params) CHANGE BACK TO THIS IF NEEDED
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
    params.permit(:picture, :name, :brand, :color, :price, :purchase_date, :category_id, :image)
  end
end



