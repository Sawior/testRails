class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.string :name
      t.integer :user_id
      t.string :message
      t.timestamps
    end
  end
end
