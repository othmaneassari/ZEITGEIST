class AddImageUrlToMarkets < ActiveRecord::Migration[7.0]
  def change
    add_column :markets, :image_url, :string
    add_column :markets, :string, :string
  end
end
