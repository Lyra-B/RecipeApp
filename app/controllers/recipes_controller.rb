class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
    @email = params[:email]
  end

  def recommend
    @recipe = Recipe.find(params[:id])
    @email = params[:email]
    NotificationsMailer.recommend(@email,@recipe).deliver_now
    redirect_to recipe_path(@recipe)
  end

  def new
    @recipe = Recipe.new
    # @recipe.recipe_ingredients << RecipeIngredient.new
    @recipe.ingredients << Ingredient.new
  end

  def create
    @recipe = Recipe.new(allowed_params)
    if @recipe.save
      redirect_to recipe_path(@recipe), :notice => "Recipe Created"
    else
      render :new
    end
  end

  # def show
  #   @recipe = Recipe.find(params[:id])
  # end

  def index
    @ingredient = Ingredient.find(params[:ingredient_id])
    @recipes = @ingredient.recipes
  end

  private
  def allowed_params
    params.require(:recipe).permit(:title)
  end
  def allowed_params_ingr
    params.require(:ingredient).permit(:name)
  end
end
