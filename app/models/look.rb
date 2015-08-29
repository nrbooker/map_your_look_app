class Look < ActiveRecord::Base

  has_many :eyes
  has_many :lips
  has_many :cheeks


  has_many :eye_items, through: :eyes
  has_many :lip_items, through: :lips
  has_many :cheek_items, through: :cheeks

  belongs_to :user

  mount_uploader :selfie, ImageUploader

end
