class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.integer :author_id
      t.text :title
      t.integer :post_date
      t.integer :created_at
      t.integer :updated_at
      t.integer :body
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
