class CategoriesController < ApplicationController
  before_action :set_category, except: %i[index new create]

  def index
    @categories = Category.order(:id)
    authorize @categories
  end

  def show
  end

  def new
    @category = Category.new
    authorize @category
  end

  def create
    @category = Category.create(category_params)
    if @category.save
      redirect_to categories_path
    else
      render :create
    end
  end

  def edit
    authorize @category
  end

  def update
    if @category.update(category_params)
      redirect_to categories_path
    else
      render :edit
    end
  end

  def destroy  
    @category.destroy
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def set_category
    @category = Category.find(params[:id])
  end
  
end
