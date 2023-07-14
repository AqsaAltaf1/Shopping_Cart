class ProductsController < ApplicationController
  before_action :set_product, except: %i[index new create delete_file]
  
  def index
    @products = Product.order(:id)
  end

  def show
  end

  def new
    @product = Product.new
  end
  
  def create
    @product = Product.create(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end
  
  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy  
    @product.destroy
    redirect_to root_path
  end

  def delete_file
    file = ActiveStorage::Attachment.find(params[:id])
    file.purge
    redirect_back(fallback_location: root_path)
  end

  private

  def product_params
    params.require(:product).permit(:Name, :Description, :Price,:category_id, files: [])
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
