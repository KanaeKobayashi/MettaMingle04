class CreateUserPasswordResetRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :user_password_reset_requests do |t|
      t.references :user, null: false, foreign_key: true
      t.string :reset_password_token
      t.datetime :reset_password_sent_at

      t.timestamps
    end
  end
end
