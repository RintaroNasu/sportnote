class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
        has_many :students
        has_many :tweets, through: :students
        validates :name, presence: true
        validates :team, presence: true, uniqueness: true
end
