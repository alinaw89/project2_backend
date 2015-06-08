class CategoriesController < ProtectedController

  def index
    #get all the categories
    @categories = Category.all
    render json: @categories
  end



  def show
    #show specific products that was clicked on
    @category = current_user.cosmetic_products.where(category_id: params[:id])
    render json: @category
  end


  def create
    # create new cosmetic product with params passed into that category
    @category = current_user.categories.new(cosmetic_product_params)
    if @cosmetic_product.save
      render json: @cosmetic_product, status: :created, location: cosmetic_products_url
    else
      render json: @cosmetic_product.errors, status: :unprocessable_entity
  end
end



end

