class CategoriesController < ProtectedController

  def index
    @categories = Category.all
    render json: @categories
  end



  def show
      @category = current_user.cosmetic_products.where(category_id: params[:id])
    # @category = Category.find(params[:id]) GO BACK TO THIS IF NEEDED

    render json: @category
  end


  def create
    @category = current_user.categories.new(cosmetic_product_params)
    # @cosmetic_product = CosmeticProduct.new(cosmetic_product_params) CHANGE BACK TO THIS IF NEEDED
    if @cosmetic_product.save
      render json: @cosmetic_product, status: :created, location: cosmetic_products_url
    else
      render json: @cosmetic_product.errors, status: :unprocessable_entity
  end
end



end

