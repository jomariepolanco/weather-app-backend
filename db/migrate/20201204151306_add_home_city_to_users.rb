class AddHomeCityToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :home_city, :integer
  end
end
