class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :update]

  def create
  end

  def destroy
  end
end