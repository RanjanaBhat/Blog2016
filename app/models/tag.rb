class Tag < ActiveRecord::Base
  attr_accessible :name
  has_permalink :name
  validates_presence_of :name
  has_many :posttags, :dependent => :destroy
  has_many :posts, through: :posttags
  belongs_to :user, :foreign_key => :user_id
  def to_param
  	permalink
  end
end
