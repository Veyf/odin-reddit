class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, limit: 20

      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end
