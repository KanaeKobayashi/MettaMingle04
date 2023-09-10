class CreateAnswersTags < ActiveRecord::Migration[7.0]
  def change
    create_table :answers_tags do |t|
      t.integer :answer_id
      t.integer :tag_id

      t.timestamps
    end
    add_foreign_key :answers_tags, :answers
    add_foreign_key :answers_tags, :tags
  end
end
