class AddReviewsToMarkets < ActiveRecord::Migration[7.0]
  def change
    add_column :markets, :reviews, :string
  end
end
