class Match < ApplicationRecord
    # self-referential for users
    
    belongs_to :matcher, class_name: 'User'
    belongs_to :matchee, class_name: 'User'
end
