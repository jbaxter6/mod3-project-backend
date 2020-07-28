class UserSerializer < ActiveModel::Serializer
  has_many :user_interests
  has_many :interests, through: :user_interests

  has_many :user_preferences
  has_many :preferences, through: :user_preferences
  
  has_many :sent_matches, foreign_key: :matcher_id, class_name: 'Match'
  has_many :matchers, through: :sent_matches

  has_many :received_matches, foreign_key: :matchee_id, class_name: 'Match'
  has_many :matchees, through: :received_matches

  attributes :id, :name, :age, :gender, :smoker, :has_kids, :tag_line, :image, :interests, :preferences

  private

  def interests
    InterestSerializer.new(object.interests).attributes
  end

  def preferences
    PreferenceSerailizer.new(object.preferences).attributes
  end
