class UsersController < ApplicationController

  def show
  @user = User.find(params[:id])
  end 

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save
      log_in @user
      flash[:success] = "Welcome to Raleigh's sample app!"

      redirect_to @user
      # note: the line above is equivalent to redirect_to user_url(@user)

    else
      render 'new'
    end
  end

  private
    # Always indent private methods
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
