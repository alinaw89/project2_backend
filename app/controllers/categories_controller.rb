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

end

