class Step < ActiveRecord::Base
  attr_accessible :text, :image
  belongs_to :manual
  has_attached_file :image, :styles => {:medium => "640x480>", 
                                        :thumb => "100x100#" }
end
