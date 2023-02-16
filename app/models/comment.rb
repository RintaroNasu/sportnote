class Comment < ApplicationRecord
  belongs_to :student, optional: true

  belongs_to :tweet

end
