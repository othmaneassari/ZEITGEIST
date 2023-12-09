class ReviewsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index,
  # has_one: Market

def index
  @reviews = Review.all
  @market = Market.find(params[:market_id])
end

def new
  @review = Review.new
  @market = Market.find(params[:market_id])
end

def create
  @review = Review.new(review_params)
  @review.user = current_user
  @market = Market.find(params[:market_id])
  @review.market = @market
  if @review.save
    redirect_to market_reviews_path(@market)
  else
    render :new, status: :unprocessable_entity
  end
end


private

def review_params
  params.require(:review).permit( :comment, :rating)
end
end
