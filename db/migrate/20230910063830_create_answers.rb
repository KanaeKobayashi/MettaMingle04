class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.integer :answer_user_id
      t.integer :question_id

      t.timestamps
    end
    add_foreign_key :answers, :users, column: :answer_user_id
    add_foreign_key :answers, :questions, column: :question_id
  end
end
