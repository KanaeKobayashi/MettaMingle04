class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :title
      t.text :question_body

      t.timestamps
    end
    add_foreign_key :questions, :users, column: :user_id
  end
end
