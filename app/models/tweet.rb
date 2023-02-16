class Tweet < ApplicationRecord
    belongs_to :student
    has_one    :teacher,  through: :student
    has_many :comments,dependent: :destroy
end
