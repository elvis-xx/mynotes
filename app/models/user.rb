class User < ActiveRecord::Base
  attr_accessible :name, :email
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  validates_presence_of :email, :on => :create, :message => "can't be blank"
  validates_length_of :name, :within => 3..50, :on => :create, :message => "must be present"
  validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, :on => :create, :message => "is invalid"
  validates_uniqueness_of :name, :on => :create, :message => "must be unique"
  validates_uniqueness_of :email, :on => :create, :message => "must be unique"
  
  
end
