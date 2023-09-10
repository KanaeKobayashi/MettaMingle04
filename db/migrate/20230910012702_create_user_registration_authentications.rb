class CreateUserRegistrationAuthentications < ActiveRecord::Migration[7.0]
  def change
    create_table :user_registration_authentications do |t|
      t.references :user, null: false, foreign_key: true
      t.string :email
      t.string :encrypted_password

      t.timestamps
    end
  end
end
