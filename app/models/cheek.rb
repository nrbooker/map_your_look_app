class Cheek < ActiveRecord::Base

has_many :cheek_items
belongs_to :look

mount_uploader :selfie, ImageUploader

end
