class UsersController < ProtectedController

   #GET /user
  def index
    # get all of the users
    @users = User.all
    render json: @users
  end

  def show
    # find one user by id
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    # create a new user by passing in name, email, password
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created, location: users_url
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    # update a user
    @user = User.find(params[:id])
    if @user.update(user_params)
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    # delete a user
    @user_product = User.find(params[:id])
    @user.destroy

    head :no_content
  end

  private
  def user_params
    params.require(:user)
      .permit(:name, :email, :password)
  end


end
