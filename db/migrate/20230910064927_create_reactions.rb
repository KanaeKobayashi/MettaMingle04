class CreateReactions < ActiveRecord::Migration[7.0]
  def change
    create_table :reactions do |t|
      t.integer :answer_id
      t.integer :user_id
      t.integer :stamp_id

      t.timestamps
    end
    add_foreign_key :reactions, :answers
    add_foreign_key :reactions, :users
  end
end
