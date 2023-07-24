class ReviewsController < ApplicationController
  
  def show
    @product = Product.find(params[:product_id])
    @review = @product.reviews
  end 

  def new
    @review = Review.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.build(review_params)
    if @review.save
      redirect_to product_path(@product)
    end
  end
  private

  def review_params
    params.require(:review).permit(:product_id, :user_id, :rating, :body)
  end
end
