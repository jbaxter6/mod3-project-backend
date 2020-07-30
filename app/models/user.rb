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

    validates :name, presence: true
    validates :age, presence: true, numericality: { only_integer: true }
    #validates :gender, presence: true, inclusion: { in: ["male", "female", "non-binary"] }, :message => "please only enter male, female or non-binary"
    #validates_inclusion_of :gender, :in => ( "male", "female", "non-binary" ), :message => "please only enter male, female or non-binary"
    #validates :smoker, presence: true, inclusion: { in: ["yes", "no"] }, :message => "please only enter yes or no"
    #validates :has_kids, presence: true, inclusion: { in: ["yes", "no"] }, :message => "please only enter yes or no"
    #validates :tag_line, presence: true, :maximum => 100, :message => "less than 100 characters please"
    #validates_length_of :last_name, :maximum => 30, :message => "less than %d if you don't mind"
   # validates_inclusion_of :image, :in => ( jpg gif png ), :message => "please upload a jpg, gif or png only"



end
