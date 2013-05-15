class AddYColumnToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :y, :integer
  end
end
