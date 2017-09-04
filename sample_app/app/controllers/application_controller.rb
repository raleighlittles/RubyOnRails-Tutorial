class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper # Use the Sessions helper module
end
