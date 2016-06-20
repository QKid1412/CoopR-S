class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :type
      t.integer :owner, index: true

      t.timestamps null: false
    end
  end
end