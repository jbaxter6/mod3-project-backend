class Api::V1::MatchesController < ApplicationController

    def index
        matches = Match.where("matcher_id = ? or matchee_id = ?", params[:user_id], params[:user_id])
        render :json
    end

    def show
        match = Match.find(:id params[:id])
        render :json
    end

    def new
        match = Match.new 
    end

    def create
        @matcherinterests = matcher.interests
    
        User.all.each do |user|
            @matcheeint = matchee.interests
            @intersection = @matcherinterests & @matcheeint
    
            if @intersection.size > 3
                @match = Match.create(matcher_id: params[:user_id], matchee_id: params[:match][:matchee_id])
                @match.save
                render json: match
            end
        end
    end

    def destroy
        match = Match.find_by(id: params[:id])
        match.destroy
    end
end


@match = Match.create(matcher_id: params[:user_id], matchee_id: params[:match][:matchee_id])
if match.save
    render json: match
end