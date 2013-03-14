class Manual < ActiveRecord::Base
  attr_accessible :body, :publish_date, :title, :category_ids, :step_ids, :steps_attributes
  validates_presence_of :body, :publish_date, :title, :user_id
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :steps , :dependent => :destroy
  accepts_nested_attributes_for :steps , :allow_destroy => true
  
end
