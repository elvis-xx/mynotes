class Micropost < ActiveRecord::Base
  attr_accessible :content
  
  validates_presence_of :content, :length => { :maximum => 140 }
  validates_presence_of :user_id
  
  belongs_to :user
  
  default_scope :order => 'microposts.id DESC'
end
