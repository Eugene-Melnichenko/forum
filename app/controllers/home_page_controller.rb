class HomePageController < ApplicationController
  def index
    @posts_admin = PostAdmin.order(created_at: :desc)
  end
end
