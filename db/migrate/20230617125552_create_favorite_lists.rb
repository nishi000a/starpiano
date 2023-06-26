class CreateFavoriteLists < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_lists do |t|
      t.integer :student_id
      t.integer :post_id

      t.timestamps
    end
  end
end
