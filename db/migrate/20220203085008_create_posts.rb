class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, limit: 64, null: false
      t.string :url, unique: true, limit: 256, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
