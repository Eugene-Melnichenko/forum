class FilmsController < ApplicationController

  before_action :set_film, only: [:show, :edit, :update, :destroy] 

  def index
    if params[:search]
      @films = Film.search(params[:search]).order("created_at DESC").paginate(:page => params[:page], per_page: 10)
    else
      @films = Film.order(created_at: :desc).paginate(:page => params[:page], per_page: 10)
    end
    @film_count = Film.count
  end

  def show
  end

  def new
    @film = Film.new
  end

  def edit
  end

  def create
    @film = Film.new(film_params)
    if @film.save
      flash[:primary] = "Фільм успішно стоврений"
      redirect_to films_path
    else
      render 'new'
    end
  end

  def update
    if @film.update(film_params)
      flash[:primary] = "Фільм успішно оновленно."
      redirect_to film_path(@film)
    else
      render 'edit'
    end
  end

  def destroy
    if @film.destroy
      flash[:primary] = "Фільм успішно видалено."
    else
      flash[:danger] = "При видалені фільма виникла помилка."
    end
    redirect_to films_path
  end

  private

  def set_film
    @film = Film.find(params[:id])
  end

  def film_params
    params.require(:film).permit(:title, :url)
  end

end
