class Post < ApplicationRecord
  validates :admission,  :merit,  :demerit,  :gap,  :curriculum_quality,  :out_of_learning,  :employment, :cost, :school_id ,presence: true
  belongs_to :user, foreign_key: 'user_id'
  belongs_to :school, foreign_key: 'school_id', optional: true
  
end
