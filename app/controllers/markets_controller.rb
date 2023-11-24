class MarketsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @markets = Market.all
    @markets = Market.all
    if params[:query].present?
      sql_subquery = <<~SQL
        categories.name @@ :query
        OR markets.name @@ :query
        OR markets.description @@ :query
      SQL
      @markets = @markets.joins(:categories).where(sql_subquery, query: params[:query])
    end
  end


  def show
    @market = Market.find(params[:id])
  end

  def new
    @market = Market.new
  end

  def create
    @market = Market.new(market_params)
    @market.user = current_user
    @market.save
    redirect_to market_path(@market)
  end


  private

  def market_params
    params.require(:market).permit(:address, :category, :name, :description, :image_url)
  end
end
