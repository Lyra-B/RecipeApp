class UserController < ApplicationController
  def create
    @user = User.create!(allowed_params)
    flash[:notice] = "Added to Mailing List"
    # welcome(@user)
    redirect_to welcome_index_path
  end

  private
  def allowed_params
    params.require(:user).permit(:name, :email)
  end
end
