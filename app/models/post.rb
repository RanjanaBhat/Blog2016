class Post < ActiveRecord::Base
  attr_accessible :body, :category_id, :email, :name, :title, :user_id, :tag_ids
  has_permalink :title  
  validates_presence_of  :body,  :email, :name, :title
  belongs_to :category, :foreign_key => :category_id
  belongs_to :user, :foreign_key => :user_id
  has_many :comments, :dependent => :destroy
  has_many :posttags, :dependent => :destroy
  has_many :tags, through: :posttags
  def to_param
  	permalink
  end
end
