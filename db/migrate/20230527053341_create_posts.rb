class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|

    	t.string :name
    	t.integer :image_id
      t.text :introduction
      t.boolean :is_active
      t.integer :teacher_id

      t.datetime :lesson_1
      t.datetime :lesson_2
      t.datetime :lesson_3
      t.datetime :lesson_4
      t.datetime :lesson_5

      t.timestamps
    end
  end
end
