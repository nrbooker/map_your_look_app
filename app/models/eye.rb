class Eye < ActiveRecord::Base

belongs_to :eye_items
belongs_to :look

mount_uploader :selfie, ImageUploader

end
