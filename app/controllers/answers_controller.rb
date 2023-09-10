class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  # Answers一覧を表示
  def index
    @answers = Answer.all
  end

  # Answerの詳細を表示
  def show
  end

  # 新しいAnswerを作成
  def new
    @answer = Answer.new
  end

  # 新しいAnswerを作成 (フォームからのデータを処理)
  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to @answer, notice: 'Answerが作成されました'
    else
      render :new
    end
  end

  # Answerを編集するフォームを表示
  def edit
  end

  # Answerを編集 (フォームからのデータを処理)
  def update
    if @answer.update(answer_params)
      redirect_to @answer, notice: 'Answerが更新されました'
    else
      render :edit
    end
  end

  # Answerを削除
  def destroy
    @answer.destroy
    redirect_to answers_url, notice: 'Answerが削除されました'
  end

  private

  # IDに基づいてAnswerを検索
  def set_answer
    @answer = Answer.find(params[:id])
  end

  # フォームからのデータを許可するパラメータ
  def answer_params
    params.require(:answer).permit(:answer_user_id, :question_id)
  end
end
