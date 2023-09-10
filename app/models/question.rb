class Question < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id', class_name: 'User'
  belongs_to :category
  has_many :answers

  validates :title, presence: true
  # 質問のbodyの長さは500文字以内と以内とする
  validates :question_body, presence: true, length: { maximum: 500 }
end
