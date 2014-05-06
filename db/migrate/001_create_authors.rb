class CreateAuthors < ActiveRecord::Migration
  def self.up
    create_table :authors do |t|
      t.text :first_name
      t.text :last_name
      t.text :location
      t.text :email
      t.text :website
      t.integer :age
      t.timestamps
    end
  end

  def self.down
    drop_table :authors
  end
end
