class CreateStamps < ActiveRecord::Migration[7.0]
  def change
    create_table :stamps do |t|
      t.integer :stamp_id
      t.integer :reaction_id

      t.timestamps
    end
    add_foreign_key :stamps, :reactions
  end
end
