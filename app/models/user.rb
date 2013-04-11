class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable , :confirmable
         
  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  
  validates_presence_of :name, :email, :password, :password_confirmation
  
  has_many :manuals
  
  before_save :skip_confirmation!
  
  after_create :welcome_message

  private

    def welcome_message
      UserMailer.welcome_mail(self).deliver
    end
  
end