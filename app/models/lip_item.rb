class LipItem < ActiveRecord::Base

has_many :lips
has_many :looks, through: :lips

end
