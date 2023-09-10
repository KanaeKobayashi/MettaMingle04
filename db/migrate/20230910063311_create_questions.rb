class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.integer :create_user_id
      t.integer :category_id
      t.string :title
      t.text :question_body

      t.timestamps
    end
    add_foreign_key :questions, :users, column: :create_user_id
  end
end
