class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :session_token, null:false
      t.string :password, minimum: 6, allow_blank: true
      t.timestamps null: false
    end
    add_index :users, :username
  end
end
