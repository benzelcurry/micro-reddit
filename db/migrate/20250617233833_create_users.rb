class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end
