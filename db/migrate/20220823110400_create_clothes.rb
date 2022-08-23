class CreateClothes < ActiveRecord::Migration[7.0]
  def change
    create_table :clothes do |t|
      t.string :title
      t.string :description
      t.string :gender
      t.string :size
      t.string :category
      t.string :color
      t.string :picture_url
      t.integer :daily_price
      t.references :owner, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
