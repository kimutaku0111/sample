class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :price
      t.string :category
      t.text :about
      t.integer :overall
      t.integer :user_id

      t.timestamps
    end
  end
end
