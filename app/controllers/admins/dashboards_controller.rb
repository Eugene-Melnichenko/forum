class Admins::DashboardsController < ApplicationController

  before_action :authenticate_admin!
  before_action :set_dashboard, only: [:edit, :update] 
  
  def edit
    @films  = Film.all
  end

  def update
    if @dashboard.update(dashboard_params)
      flash[:primary] = "Дані успішно оновленно."
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

  def set_dashboard
    @dashboard = Dashboard.last
  end

  def dashboard_params
    params.require(:dashboard).permit(:logotype, :title, 
      :text_1, :text_2, :text_3, :title_text_1, :title_text_2, :title_text_3,
      :url_1, :url_2, :url_3)
  end

end
