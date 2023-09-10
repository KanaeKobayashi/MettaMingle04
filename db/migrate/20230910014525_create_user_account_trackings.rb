class CreateUserAccountTrackings < ActiveRecord::Migration[7.0]
  def change
    create_table :user_account_trackings do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :sign_in_count
      t.datetime :last_sign_in_at
      t.datetime :current_sign_in_at
      t.string :last_sign_in_ip
      t.string :current_sign_in_ip

      t.timestamps
    end
  end
end
