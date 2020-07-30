class Match < ApplicationRecord
    # self-referential for users
    
    belongs_to :matcher, class_name: 'User'
    belongs_to :matchee, class_name: 'User'

    def get_match
        @matcherinterests = self.interests

        User.all.each do |user|
            @matcheeint = user.interests
            @intersection = @matcherinterests & @matcheeint

            if @intersection.size > 3
                @match = Match.new(matcher_id: params[:user_id], matchee_id: params[:match][:matchee_id])
                @match.save
                render json: match
            end
    end

end
