class Post < ActiveRecord::Base
  attr_accessible :text, :title, :image, :user_id, :x, :y
  has_many :comments
  belongs_to :user
  mount_uploader :image, ImageUploader

  def self.post_list
    Post.find(:all, :limit => 8, :order => 'id DESC')
  end
end
