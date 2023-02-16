class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
        belongs_to :teacher, optional: true
        has_many :tweets,dependent: :destroy
        has_many :comments, dependent: :destroy
        
end
