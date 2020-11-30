class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.integer :search_id
      t.string :name
      t.string :state
      t.string :country
      t.integer :lat
      t.integer :lon

      t.timestamps
    end
  end
end
