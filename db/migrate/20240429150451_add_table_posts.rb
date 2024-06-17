class AddTablePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.datetime :published_at, null: false
      t.integer :answers_count, null: false, default: 0
      t.integer :likes_count, null: false, default: 0

      t.timestamps
    end
  end
end
