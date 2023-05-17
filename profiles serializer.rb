class ProfilesSerializer < ActiveModel::Serializer
    belongs_to :user
    attributes :name, :email,:bio, :social_account,:cohort,:graduation_year, :profession, :privacy,:is_active
end