class AccountActivationsController < ApplicationController

  def edit
    user = User.find_by(email: params[:email])
    # Make sure you can't 'activate' a user that is already activated
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.activate
      log_in(user)
      flash[:success] = "Account successfully activated!"
      redirect_to(user)
    else
      flash[:danger] = "Invalid activation link"
      redirect_to(root_url)
    end
  end
end