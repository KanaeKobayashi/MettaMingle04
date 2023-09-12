class QuestionsController < ApplicationController
  def create
    @question = Question.new(question_params)
    @question.save
  end
end
