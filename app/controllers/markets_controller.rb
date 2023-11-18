class MarketsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @markets = Market.all
  end

  def show
    @market = market.find(params[:id])
  end

  def new
    @market = market.new
  end

  def create
    @market = Market.new(market_params)
    @market.user = current_user
    @market.save
    redirect_to market_path(@market)
  end
end

private

def game_params
  params.require(:market).permit(:address, :category, :name, :description )
end
