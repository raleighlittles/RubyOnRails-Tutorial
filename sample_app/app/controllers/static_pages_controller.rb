class StaticPagesController < ApplicationController


  def home
    @micropost = current_user.microposts.build if logged_in?
  end

  def help
  end

  def about # add in controller for about page
  end

  def contact
  end
end
