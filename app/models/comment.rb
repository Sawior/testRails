class Comment < ActiveRecord::Base
  attr_accessible :post_id, :guest_id,  :text
  belongs_to :post
  
end
