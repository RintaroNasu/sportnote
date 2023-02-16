class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.text :body
      t.integer :student_id
      t.datetime :start_time

      t.timestamps
    end
  end
end
