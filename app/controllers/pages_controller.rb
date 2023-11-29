class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @markets = Market.all
    @markers = @markets.map do |market|
      { lat: market.latitude, lng: market.longitude }
    end
  end
end
