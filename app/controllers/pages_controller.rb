class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @markets = Market.all
    @markers = @markets.map do |market|
      { lat: market.latitude, lng: market.longitude,
      info_window_html: render_to_string(partial: "info_window", locals: {market: market}) }

    end
  end
end
