class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter do
    @categories = Category.all
    @cuisines = Cuisine.all
    # @user = User.new
  end
end
