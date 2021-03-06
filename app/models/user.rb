class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name,:fname, :lname, :birthday, :cur_city, :country, :fav_color, :gender, :photo
  # attr_accessible :title, :body
  validates_presence_of :name,:fname, :lname, :birthday, :cur_city, :country, :fav_color ,:gender, :email
  validates_uniqueness_of :email, :case_sensitive => false
  has_many :posts
  has_many :tags
  has_many :comments
  has_many :categories
  do_not_validate_attachment_file_type :photo
  #has_attached_file :pic, :styles => 
   #        { :medium => "300x300>", :thumb => "100x100>" }
   has_attached_file :photo
end
