class Admins::UsersController < ApplicationController
  before_action :authenticate_admin!

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:primary] = "Користувач успішно видалений"
    else
      flash[:danger] = "При видалені користувача сталася помилка"
    end
    redirect_to admins_dashboards_index_path
    
  end
end
