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
      @markets = @markets.joins(:category).where(sql_subquery, query: params[:query])
    end
  end

  def show
    @market = Market.find(params[:id])
    @marker = [{ lat: @market.latitude, lng: @market.longitude }]
  end

  def new
    @market = Market.new
    @categories = Category.distinct(:name)
  end

  def create
    @market = Market.new(market_params.except(:category))
    @market.user = current_user
    pp "params[:category]"
    pp params[:category]
    @category = Category.find(market_params[:category])
    pp Category.find(market_params[:category])
    @market.category = @category
    @market.save!
    redirect_to markets_path
  end


  private

  def market_params
    params.require(:market).permit(:address, :category, :name, :description, :image_url)
  end
end
