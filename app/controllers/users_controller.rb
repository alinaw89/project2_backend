class UsersController < ApplicationController

   #GET /user
  def index
    # all the user products
    @users = User.all
    render json: @users
  end

  def show
    # find one user by id
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created, location: users_url
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user_product = User.find(params[:id])
    @user.destroy

    head :no_content
  end

  private
  def user_params
    params.require(:user)
      .permit(:name, :email)
  end


end
