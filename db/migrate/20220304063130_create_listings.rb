class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :features
      t.float :price
      t.bigint :city_id
      t.bigint :country_id

      t.timestamps
    end
  end
end
