class CheekItem < ActiveRecord::Base

has_many :cheeks
has_many :looks, through: :cheeks

end
