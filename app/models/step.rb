class Step < ActiveRecord::Base
  attr_accessible :text
  belongs_to :manual
end
