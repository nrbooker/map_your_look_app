class Look < ActiveRecord::Base

  has_one :eye
  has_one :lip
  has_one :cheek

  belongs_to :user

  mount_uploader :selfie, ImageUploader

end
