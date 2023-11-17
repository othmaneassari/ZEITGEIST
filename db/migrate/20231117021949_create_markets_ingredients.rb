class CreateMarketsIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :markets_ingredients do |t|
      t.references :ingredient, null: false, foreign_key: true
      t.references :market, null: false, foreign_key: true

      t.timestamps
    end
  end
end
