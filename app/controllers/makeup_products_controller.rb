class MakeupProductsController < ApplicationController

  #GET /users
  def index
    # all the makeup produects
    @makeup_products = MakeupProduct.all
    render json: @makeup_products
  end
