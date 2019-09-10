class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :category
      t.string :title
      t.text :description
      t.float :price
      t.integer :quantity
      t.string :photo
      t.integer :cook_id

      t.timestamps
    end
  end
end
