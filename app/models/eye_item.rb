class EyeItem < ActiveRecord::Base

has_many :eyes
has_many :looks, through: :eyes

end
