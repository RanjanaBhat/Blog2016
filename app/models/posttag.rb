class Posttag < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :post
  belongs_to :tag
  belongs_to :user, :foreign_key => :user_id
  def to_param
  	permalink
  end
end
