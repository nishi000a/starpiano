class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :teacher, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.boolean :teacher_flg, default: false, null: false
      t.text :body

      t.timestamps
    end
  end
end