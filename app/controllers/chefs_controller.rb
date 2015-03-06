class ChefsController < ApplicationController
  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.create!(allowed_params)
    redirect_to chef_path(@chef.id)
  end

  def show
    @chef = Chef.find(params[:id])
  end

  private
  def allowed_params
    params.require(:chef).permit(:name)
  end
end
