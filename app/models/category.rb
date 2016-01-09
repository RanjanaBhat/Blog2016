class Category < ActiveRecord::Base
  attr_accessible :name
  has_permalink :name
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :posts, :dependent => :destroy
  def to_param
  	permalink
  end

end
