class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :meal, foreign_key: true
      t.references :user, foreign_key: true
      t.time :time
      t.float :rating
      t.text :review
      t.date :review_at

      t.timestamps
    end
  end
end
