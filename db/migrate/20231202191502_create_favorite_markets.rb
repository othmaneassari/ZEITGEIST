class CreateFavoriteMarkets < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_markets do |t|
      t.references :user, null: false, foreign_key: true
      t.references :market, null: false, foreign_key: true

      t.timestamps
    end
  end
end
