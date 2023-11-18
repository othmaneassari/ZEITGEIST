class ReviewsController < ApplicationController



def new
  @review = Review.new
  @market = Market.find(params[:market_id])
end

def create
  @review = Review.new(review_params)
  @review.user = current_user
  @market = Market.find(params[:market_id])
  @review.market = @market
  @review.save
  redirect_to market_path(@market)
end


private

def review_params
  params.require(:review).permit( :comment, :rating)
end
end
