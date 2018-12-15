class Admins::PostsController < ApplicationController
  
  before_action :authenticate_admin!, except: [:index, :show]
  before_action :set_post_admin, only: [:show, :edit, :update, :destroy] 

  def index
    @posts_admin = PostAdmin.order(created_at: :desc)
  end

  def show
  end

  def new
    @post_admin = PostAdmin.new
  end

  def edit
  end

  def create
    if @post_admin.save
      flash[:primary] = "Оголошення успішно створено."
      redirect_to admins_posts_path
    else
      render 'new'
    end
  end

  def update
    if @post_admin.update(post_admin_params)
      flash[:primary] = "Оголошення успішно оновленно."
      redirect_to admins_posts_path
    else
      render 'edit'
    end
  end

  def destroy
    if @post_admin.destroy
      flash[:primary] = "Оголошення успішно видалено."
    else
      flash[:danger] = "При видалені оголошення виникла помилка."
    end
    redirect_to admins_posts_path
  end

  private

  def set_post_admin
    @post_admin = PostAdmin.find(params[:id])
  end

  def post_admin_params
    params.require(:post_admin).permit(:title, :summary, :body, :image)
  end
end
