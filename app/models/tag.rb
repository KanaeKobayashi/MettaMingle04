class Tag < ApplicationRecord
  has_many :question_tags
  has_many :questions, through: :question_tags
  has_many :answers_tags
  has_many :answers, through: :answers_tags

  validates :tag_name, presence: true, uniqueness: true
end
