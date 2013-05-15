class Post < ActiveRecord::Base

  attr_accessible :text, :title, :image, :user_id, :x, :y,  :name, :tag_list
acts_as_taggable_on :tags

  
has_many :comments
belongs_to :user
mount_uploader :image, ImageUploader
end
