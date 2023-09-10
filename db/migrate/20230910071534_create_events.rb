class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.datetime :started_at
      t.datetime :end_at

      t.timestamps
    end
    add_foreign_key :events, :users, column: :user_id
  end
end
