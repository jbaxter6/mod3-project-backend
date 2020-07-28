class Preference < ApplicationRecord
    has_many :user_preferences
    has_many :users, through: :user_preferences

    validates :sex, presence: true, inclusion: { in: ("male", "female", "both") }, :message => "please only enter male, female or both"
end
