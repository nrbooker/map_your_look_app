class Look < ActiveRecord::Base

  has_one :eye
  has_one :lip
  has_one :cheek

end
