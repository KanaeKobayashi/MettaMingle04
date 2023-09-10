class CreateUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :user_handle_name
      t.text :user_profile

      t.timestamps
    end
  end
end
