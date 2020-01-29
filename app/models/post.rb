class Post < ApplicationRecord
  validates :admission,  :merit,  :demerit,  :gap,  :curriculum_quality,  :out_of_learning,  :employment, :cost, :school_id ,presence: true
  has_many :users
  belongs_to :school, foreign_key: 'school_id', optional: true
  
end
