class Material < ActiveRecord::Base
   attr_accessible :name, :amount
   belongs_to :manual
end
