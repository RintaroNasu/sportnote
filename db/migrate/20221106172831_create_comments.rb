class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.references :student, null: false, foreign_key: true
      t.references :tweet, null: false, foreign_key: true
      t.string :teacher_id

      t.timestamps
    end
  end
end
