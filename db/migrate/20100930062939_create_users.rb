class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :hashed_password
      t.string :password_salt
      t.boolean :is_admin, default: false
      t.string :access_key
      t.string :remember_token
      t.string :reset_password_token
      t.datetime :reset_password_token_expires_at
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
