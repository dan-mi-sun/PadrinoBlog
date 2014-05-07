class ChangeTypeTimestampsOnPosts < ActiveRecord::Migration
  def self.up
    change_column(:posts, :created_at, :datetime)
    change_column(:posts, :updated_at, :datetime)
  end

  def self.down
    change_column(:posts, :created_at, :integer)
    change_column(:posts, :updated_at, :integer)
  end
end
