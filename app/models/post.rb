class Post < ActiveRecord::Base
  attr_accessible :text, :title, :image, :user
has_many :comments
belongs_to  :user
mount_uploader :image, ImageUploader
end
