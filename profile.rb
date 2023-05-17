class Profile < ApplicationRecord
    belongs_to :user
    has_one_attached :profile_picture
    validates :name, presence: true
    validates :user_id, presence: true
    validate :profile_picture_format
  
    private
  
    def profile_picture_format
      if profile_picture.attached? && 
        !profile_picture.content_type.in?(%w(image/jpeg image/png))
        errors.add(:profile_picture, 'must be a JPEG or PNG')
      elsif profile_picture.attached? == false
        errors.add(:profile_picture, 'is required')
      end
    end
  end
  