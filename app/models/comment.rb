class Comment < ActiveRecord::Base
  attr_accessible :body, :name, :post_id , :user_id
  has_permalink :body
  belongs_to :user, :foreign_key => :user_id
  belongs_to :post, :foreign_key => :post_id
  validates_presence_of :name, :body
  def to_param
  	permalink
  end
end
