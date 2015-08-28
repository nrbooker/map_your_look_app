class Lip < ActiveRecord::Base

has_many :lip_items
belongs_to :look

mount_uploader :selfie, ImageUploader

end
