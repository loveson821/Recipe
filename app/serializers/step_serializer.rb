class StepSerializer < ActiveModel::Serializer
  attributes :text, :image
  #has_one :image
  
  def image
    object.image.url
  end
  
end
