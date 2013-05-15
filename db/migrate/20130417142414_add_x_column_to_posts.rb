class AddXColumnToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :x, :integer
  end
end
