class Course < ApplicationRecord
   validates :title, presence: true
  validates :description, presence: true
  validates :skills, presence: true
end
