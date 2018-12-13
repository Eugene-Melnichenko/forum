class Admins::DashboardsController < ApplicationController

  before_action :authenticate_admin!, except: [:index, :show]
  before_action :set_dashboard, only: [:edit, :update] 
  
  def edit
  end

  def update
    if @dashboard.update(dashboard_params)
      flash[:primary] = "Оголошення успішно оновленно."
    else
      render 'edit'
    end
      redirect_to root_path
  end

  private

  def set_dashboard
    @dashboard = Dashboard.last
  end

  def dashboard_params
    params.require(:dashboard).permit(:logotype, :title, 
      :text_1, :text_2, :text_3, :title_text_1, :title_text_2, :title_text_3)
  end

end
