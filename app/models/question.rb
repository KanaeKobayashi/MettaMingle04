class Question < ApplicationRecord
  belongs_to :user, foreign_key: 'create_user_id', class_name: 'User'
  belongs_to :category
  has_many :answers

  validates :title, presence: true
  validates :question_body, presence: true
end
