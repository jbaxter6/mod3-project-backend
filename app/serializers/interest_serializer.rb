class InterestSerializer < ActiveModel::Serializer
  has_many :user_interests
  has_many :users, through: :user_interests
  attributes :id, :name, :user_id
end
