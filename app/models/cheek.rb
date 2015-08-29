class Cheek < ActiveRecord::Base

belongs_to :cheek_items
belongs_to :look

mount_uploader :selfie, ImageUploader

end
