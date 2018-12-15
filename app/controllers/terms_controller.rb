class TermsController < ApplicationController

  before_action :set_term, only: [:edit, :update, :destroy] 

  def index
    if params[:search]
      @terms = Term.search(params[:search]).order('title ASC')
    else
      @terms = Term.all.order('title ASC')
    end
    @terms_count = Term.count
  end

  def new
    @term = Term.new
  end

  def edit
  end

  def create
    @term = Term.new(term_params)
    if @term.save
      flash[:primary] = "Термін успішно стоврений"
      redirect_to terms_path
    else
      render 'new'
    end
  end

  def update
    if @term.update(term_params)
      flash[:primary] = "Термін успішно оновленно."
      redirect_to edit_term_path(@term)
    else
      render 'edit'
    end
  end

  def destroy
    if @term.destroy
      flash[:primary] = "Термін успішно видалено."
    else
      flash[:danger] = "При видалені терміна виникла помилка."
    end
    redirect_to terms_path
  end

  private

  def set_term
    @term = Term.find(params[:id])
  end

  def term_params
    params.require(:term).permit(:title, :text)
  end

end
