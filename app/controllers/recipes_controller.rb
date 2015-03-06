class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
    @email = params[:email]
  end

  def recommend
    @recipe = Recipe.find(params[:id])
    @email = params[:email]
    # binding.pry
    NotificationsMailer.recommend(@email,@recipe).deliver_now
    redirect_to recipe_path(@recipe)
  end
end
