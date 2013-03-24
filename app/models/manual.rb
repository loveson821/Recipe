class Manual < ActiveRecord::Base
  attr_accessible :body, :publish_date, :title, :category_ids, :step_ids, :steps_attributes, :spree_products, :cookTime, :quantity, :kcal, :difficulty
  
  validates_presence_of :body, :publish_date, :title, :user_id
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :steps , :dependent => :destroy
  accepts_nested_attributes_for :steps , :allow_destroy => true
  
  has_one :spree_products, :class_name => 'Spree::Product'
  
  has_many :materials, :dependent => :destroy
  accepts_nested_attributes_for :materials , :allow_destroy => true
end
