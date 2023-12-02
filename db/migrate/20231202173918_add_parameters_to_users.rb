class AddParametersToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :picture_url, :string
    add_column :users, :biography, :string
    add_column :users, :description, :string
    add_column :users, :time_in_berlin, :string
  end
end
