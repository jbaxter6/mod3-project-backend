class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
    
        render json: users, include: [:interests, :preferences]
        # render json: trainers, only: [:id, :name], include: :pokemons
    end

    def show 
        user = User.find_by(id: params[:id])
        render json: user, include: [:interests, :preferences]
    end

    def new
        user = User.new(user_params)
    end

    def create
        # byebug
        user = User.new(user_params)
        if user.save
            render json: user 
        else
            return "entry needed for every field"
        end
    end

    def edit
        user = User.find_by(id: params[:id])
    end

    def update
        exercise = Interest.find_by(name: params[:interests][0])
        byebug 
        UserInterest.create(user_id: params[:id], interest_id: exercise.id)
        user = User.find_by(id: params[:id])
        user.interest.update(user_params)
        render json: user
    end

    def destroy
        user = User.find_by(id: params[:id])
        user.destroy
        render json: {}
    end


    private

    def user_params 
        params.require(:user).permit(:name, :age, :gender, :smoker, :has_kids, :tagline, :image)
    end

end
