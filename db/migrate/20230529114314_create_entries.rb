class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.integer :room_id, null: false
      t.integer :student_id, null: false
      t.integer :teacher_id, null: false
      t.timestamps
    end
  end
end
