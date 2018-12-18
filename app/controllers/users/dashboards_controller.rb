class Users::DashboardsController < ApplicationController

  def new
    @messages = Message.where(user_id: current_user)
    @message = Message.new
  end

  def create
    @message = current_user.messages.new(message_params)
    if @message.save
      flash[:primary] = "Повідомлення успішно надісално"
      redirect_to new_users_dashboard_path
    else
      render 'new'
    end
  end

  def destroy
    @message = Message.find(params[:id])
    if @message.destroy
      flash[:primary] = "Повідомлення успішно видалено."
    else
      flash[:danger] = "При видалені повідомлення виникла помилка."
    end
    redirect_to new_users_dashboard_path
  end

  private

  def message_params
    params.require(:message).permit(:message).merge(email: current_user.email)
  end

end
