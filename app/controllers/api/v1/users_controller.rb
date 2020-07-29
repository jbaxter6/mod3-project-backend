class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: interests.to_json(include: :interests, :preferences)
    end

    def show 
        user = User.find_by(id: params[:id])
        render json: user 
    end

    def new
        user = User.new(user_params)
    end

    def create
        user = User.create(user_params)
        if user.save
            render json: user 
        else
            return "entry needed for every field"
    end

    def edit
        user = User.find_by(id: params[:id])
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find_by(id: params[:id])
        user.destroy
    end


    private
    def user_params 
        params.require(:user).permit(:name, :age, :gender, :smoker, :has_kids, :tagline, :image)
    end
end
