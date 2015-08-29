class Cheek < ActiveRecord::Base

belongs_to :cheek_item
belongs_to :look

mount_uploader :selfie, ImageUploader

end
