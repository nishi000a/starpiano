class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.integer :post_id
      t.integer :student_id
      t.datetime :lesson_date

      t.timestamps
    end
  end
end
