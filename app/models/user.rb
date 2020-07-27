class User < ApplicationRecord
    has_many :user_interests
    has_many :interests, through: :user_interests

    has_many :user_preferences
    has_many :preferences, through: :user_preferences

    # self-referential relationship below

    has_many :sent_matches, foreign_key: :matcher_id, class_name: 'Match'
    has_many :matchers, through: :sent_matches

    has_many :received_matches, foreign_key: :matchee_id, class_name: 'Match'
    has_many :matchees, through: :received_matches



end
