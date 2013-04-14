class Manual < ActiveRecord::Base
  attr_accessible :body, :publish_date, :title, :category_ids, :step_ids, :steps_attributes, :spree_products, :cookTime, :quantity, :kcal, :difficulty, :image, :materials_attributes, :user_id
  
  #validates_presence_of :body, :publish_date, :title, :user_id
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :steps , :dependent => :destroy
  accepts_nested_attributes_for :steps , :reject_if => proc{ |attributes| attributes['image'].blank? }, :allow_destroy => true
  
  has_one :spree_products, :class_name => 'Spree::Product'
  
  has_many :materials, :dependent => :destroy
  accepts_nested_attributes_for :materials , :allow_destroy => true
  mount_uploader :image, ImageUploader
  
  
  #scopes
  #Record.find(:all, :conditions => {:offset => params[:page] * 10, :limit => 10})
  default_scope order('id DESC')
  scope :pack, Proc.new{ |page,limit| offset(page*limit).limit(limit) }
end
