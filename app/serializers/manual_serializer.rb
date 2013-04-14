class ManualSerializer < ActiveModel::Serializer
  attributes :id,:body, :publish_date, :title
  has_many :materials, :categories
  has_many :steps, :serializer => StepSerializer
  has_one :image
  
  #def images
  #  object.image
  #end
end
