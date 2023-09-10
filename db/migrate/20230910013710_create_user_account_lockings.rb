class CreateUserAccountLockings < ActiveRecord::Migration[7.0]
  def change
    create_table :user_account_lockings do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :failed_attempts
      t.string :unlock_token
      t.datetime :locked_at

      t.timestamps
    end
  end
end
