class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def recommend
    @email = params[:email]
    NotificationsMailer.recommend(@email,recipe_path).deliver_now
    redirect_to recipe_path
  end
end
