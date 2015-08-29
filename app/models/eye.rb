class Eye < ActiveRecord::Base

belongs_to :eye_item
belongs_to :look

mount_uploader :selfie, ImageUploader

end
