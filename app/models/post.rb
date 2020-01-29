class Post < ApplicationRecord
  validates :admission,  :merit,  :demerit,  :gap,  :curriculum_quality,  :out_of_learning,  :employment, :cost, :school_id ,presence: true
  has_many :users
  has_many :schools
end
