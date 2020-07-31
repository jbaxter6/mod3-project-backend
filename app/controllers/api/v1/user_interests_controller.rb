class Api::V1::UserInterestsController < ApplicationController

  def new
    user_interest = UserInterest.new(user_id: params[:user_id], interest_id: params[:interest_id])
    render json: user_interest
  end

  def create
    array = params[:interests]
      array.map do |interest|
          Interest.find_by(name:interest)
        end
        # exercise = Interest.find_by(name:array[0])
        use_int = UserInterest.create(user_id: params[:id], interest_id: exercise.id)
        # user = User.find_by(id: params[:id])
        # user.interest.update(user_params)
        render json: use_int
  end

  def edit
    user_interest = UserInterest.find_by(id: params[:id])
  end

  def update
    user_interest = UserInterest.find_by(id: params[:id])
    user_interest.update(user_id: params[:user_id], interest_id: params[:interest_id])
    render json: user_interest
  end

end
