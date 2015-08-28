class User < ActiveRecord::Base

has_many :looks

has_many :eyes_items
has_many :cheeks_items
has_many :lips_items

end
