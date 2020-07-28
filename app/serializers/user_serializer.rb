class UserSerializer < ActiveModel::Serializer

  attributes :id, :name, :age, :gender, :smoker, :has_kids, :tag_line, :image, :interests, :preferences

  private

  def interests
    InterestSerializer.new(object.interests).attributes
  end

  def preferences
    PreferenceSerailizer.new(object.preferences).attributes
  end
