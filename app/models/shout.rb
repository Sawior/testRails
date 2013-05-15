class Shout < ActiveRecord::Base
  attr_accessible :name, :message, :user_id
  validates_presence_of :message
  validates_length_of   :name,  :within => 1..255
  
  def self.all_shouts
    Shout.find(:all, :limit => 5, :order => 'id DESC')
  end
  
end
