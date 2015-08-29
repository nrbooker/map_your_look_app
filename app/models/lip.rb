class Lip < ActiveRecord::Base

belongs_to :lip_items
belongs_to :look

mount_uploader :selfie, ImageUploader

end
