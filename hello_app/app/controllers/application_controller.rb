class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    # Instead of printing regular rails page, print hello world!
    render html: "Hello world!"
  end
end
