class Lip < ActiveRecord::Base

belongs_to :lip_item
belongs_to :look

mount_uploader :selfie, ImageUploader

end
