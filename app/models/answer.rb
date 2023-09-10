class Answer < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id', class_name: 'User'
  belongs_to :question
  has_many :reactions
  has_many :answers_tags
  has_many :tags, through: :answers_tags

  validates :title, presence: true
  validates :question_body, presence: true
end
