class PreferenceSerializer < ActiveModel::Serializer
  has_many :user_preferences
  has_many :users, through: :user_preferences
  attributes :id, :sex
end
