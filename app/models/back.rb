class Back < ActiveRecord::Base
    belongs_to :backer, foreign_key: "backer_id", class_name: "User"
    belongs_to :backee, foreign_key:"backee_id", class_name: "User"
end 

