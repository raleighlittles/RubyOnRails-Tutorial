class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      # If the user checks the checkbox, keep them logged in
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_back_or(user)

      #remember user
      #redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  log_out if logged_in? # only log out if a user is currently logged in
    redirect_to root_url
  end

end
