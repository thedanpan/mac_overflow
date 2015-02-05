class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :prompt
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
