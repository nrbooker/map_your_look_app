class Eye < ActiveRecord::Base

has_many :eye_items
belongs_to :look

mount_uploader :selfie, ImageUploader

end
