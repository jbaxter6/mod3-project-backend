class Api::V1::InterestsController < ApplicationController

    def index
        interests = Interest.all
        render json: interests
    end

    def create
        interest = Interest.create(name: name)
        render json: interest
    end
end
