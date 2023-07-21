class ProductsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show search]
  before_action :set_product, except: %i[index new create delete_file search]
  
  def index
    @products = Product.order(name: :asc)
  end

  def show
  end

  def new
    @product = Product.new
  end
  
  def create
    @shop = current_user.shop
    @product = @shop.products.build(product_params)
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

  def search
    if params[:search].blank?
      redirect_to root_path and return
    else
      @parameter = params[:search]
      @results = Product.joins(:shop).where('shops.name ILIKE :search OR products.name ILIKE :search OR products.description ILIKE :search',search: "%#{@parameter}%")
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price,:category_id,files: [])
  end

  def set_product
    @product=Product.find(params[:id])
  end
end
