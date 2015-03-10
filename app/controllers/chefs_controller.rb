class ChefsController < ApplicationController
  def new
    @chef = Chef.new
    @recipe = Recipe.new
    @chef.recipes << @recipe
  end

  def create
    # binding.pry
    @chef = Chef.create!(allowed_params)
    # @chef.recipes << Recipe.create!(allowed_params[:recipe])
    redirect_to chef_path(@chef.id)
  end

  def show
    @chef = Chef.find(params[:id])
  end

  private
  def allowed_params
    params.require(:chef).permit(:name, :recipes_attributes => [:title])
  end
end
