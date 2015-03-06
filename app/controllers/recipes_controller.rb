class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def recommend
    @email = params[:email]
    # @url = recipe_url{:id => params[:id]}
    NotificationsMailer.recommend(@email,@url).deliver_now
    redirect_to recipe_path
  end
end
