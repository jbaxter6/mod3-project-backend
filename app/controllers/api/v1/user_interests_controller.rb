class Api::V1::UserInterestsController < ApplicationController

  def new
    user_interest = UserInterest.new(user_id: params[:user_id], interest_id: params[:interest_id])
    render json: user_interest
  end

  def create
    user_interest = UserInterest.new(user_id: params[:user_id], interest_id: params[:interest_id])
    user_interest.save
    render json: user_interest
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
